from distutils import core

from django.shortcuts import render, redirect

from django.views.generic import CreateView

from django.http import HttpResponse
#cinfirmation
from django.http import HttpResponse
from django.shortcuts import render, redirect
from django.contrib.auth import login, authenticate
from django.contrib.sites.shortcuts import get_current_site
from django.utils.encoding import force_bytes, force_text
from django.utils.http import urlsafe_base64_encode, urlsafe_base64_decode
from django.template.loader import render_to_string
from .tokens import account_activation_token
from django.contrib.auth.models import User
from django.core.mail import EmailMessage
#endconfirmation
from django.core.urlresolvers import reverse_lazy
#App imports
from apps.User.models import User
from apps.User.forms import UserForm
from .forms import *
from .models import *

# Create your views here.
class UserView(CreateView):
    model = User
    form_class = UserForm
    template_name = 'signup/Registro1.html'
    success_url = reverse_lazy('login')
def signup(request):
    if request.method == 'POST':
        form = UserForm(request.POST)
        if form.is_valid():
            user = form.save(commit=False)
            user.is_active = False
            user.save()
            current_site = get_current_site(request)
            mail_subject = 'Activa tu cuenta en Tutorias Ucatolica'
            message = render_to_string('user_profile/confirm.html', {
                'user': user,
                'domain': current_site.domain,
                'uid':urlsafe_base64_encode(force_bytes(user.pk)).decode(),
                'token':account_activation_token.make_token(user),
            })
            to_email = form.cleaned_data.get('email')
            email = EmailMessage(
                mail_subject, message, to=[to_email]
            )
            email.send()
            return render(request,'user_profile/confirm_email.html')
    else:
        form = UserForm()
    return render(request, 'signup/Registro1.html', {'form': form})
def activate(request, uidb64, token):
    try:
        uid = force_text(urlsafe_base64_decode(uidb64))
        user = User.objects.get(pk=uid)
    except(TypeError, ValueError, OverflowError, User.DoesNotExist):
        user = None
    if user is not None and account_activation_token.check_token(user, token):
        user.is_active = True
        user.save()
        user.backend='django.contrib.auth.backends.ModelBackend'
        login(request, user)
        # return redirect('home')
        #return HttpResponse('Gracias por confirmar tu dirección de correo electronico. Ahora puedes ingresar sin problemas')
        return render(request,'user_profile/activate.html')
    else:
        return render(request,'user_profile/confirm_expired.html')
        #return HttpResponse('El link de activación es inválido o ha expirado')
def onlyuser(self,email):
    C=''
    for c in email:
        if c == '@':
            break
        else:
            C=C+c
    return  C
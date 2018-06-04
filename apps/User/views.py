from django.shortcuts import render

from django.views.generic import CreateView

from django.shortcuts import render_to_response,get_object_or_404
from django.http import HttpResponse,HttpResponseRedirect
from django.contrib import auth
from django.core.context_processors import csrf
from django.template import  RequestContext
from django.core.mail import send_mail
import hashlib,datetime,random
from django.utils import timezone
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
    def register_user(request):
        args = {}
        args.update(csrf(request))
        if request.method == 'POST':
            form = UserForm(request.POST)
            args['form'] = form
            if form.is_valid():
                form.save()  # guardar el usuario en la base de datos si es válido
                username = form.cleaned_data['username']
                email = form.cleaned_data['email']
                salt = hashlib.sha1(str(random.random())).hexdigest()[:5]
                activation_key = hashlib.sha1(salt+email).hexdigest()
                key_expires = datetime.datetime.today() + datetime.timedelta(2)
                #Obtener el nombre de usuario
                user=User.objects.get(username=username)
                # Crear el perfil del usuario
                new_profile = UserProfile(user=user, activation_key=activation_key,
                                          key_expires=key_expires)
                new_profile.save()
                # Enviar un email de confirmación
                email_subject = 'Confirmación de cuenta.'
                email_body = "Hola %s, Gracias por registrarte. Para activar tu cuenta da clíck en este link en menos de 48 horas: http://127.0.0.1:8000/accounts/confirm/%s" % (username, activation_key)

                send_mail(email_subject, email_body, 'myemail@example.com',
                          [email], fail_silently=False)

                return HttpResponseRedirect('/accounts/register_success')
        else:
            args['form'] = UserForm()

        return render_to_response('signup/Registro1.html', args, context_instance=RequestContext(request))
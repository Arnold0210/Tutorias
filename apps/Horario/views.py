from django.contrib.sites.shortcuts import get_current_site
from django.core.mail import EmailMessage
from django.shortcuts import render
from django.http import HttpResponseRedirect
from django.core.urlresolvers import reverse
from django.template.loader import render_to_string
from django.utils.encoding import force_text, force_bytes
from django.utils.http import urlsafe_base64_decode, urlsafe_base64_encode
from django.views.generic import CreateView,ListView
from apps.Horario.models import Horario,Tutoria
from apps.Horario.forms import CreateHorarioForm,CreateTuroriaForm,CreateTutoriasForm
from django.core.urlresolvers import reverse_lazy
# Create your views here.
from apps.Materia.models import Materia


class CreateHorarioView(CreateView):
    model = Horario
    form_class = CreateHorarioForm
    template_name = 'create/horario/HorarioCreate.html'
    success_url = reverse_lazy('main')

class ListhorarioView(ListView):
    model = Horario
    template_name = 'views/Horario/HorarioList.html'

class CreateTutoriasView(CreateView):
    model = Tutoria
    form_class = CreateTutoriasForm
    template_name = 'create/tutoria/agendarTutoria.html'
    success_url = reverse_lazy('main')

def correo(request):
    if request.method == 'POST':
        form = CreateTutoriasForm(request.POST)
        if form.is_valid():
            form.save()
            current_site = get_current_site(request)
            mail_subject = 'Confirmación Tutoria'
            message = render_to_string('views/Usuario/correoconfitmacion.html', {
            })
            to_email = request.user.email
            email = EmailMessage(
                mail_subject, message, to=[to_email]
            )
            email.send()
            return render(request,'views/Usuario/confirm_email.html')
    else:
        form = CreateTutoriasForm()
    return render(request, 'create/tutoria/agendarTutoria.html', {'form': form})
def TutoriasView(request):
    form = CreateTuroriaForm()
    if request.method== 'POST':
        form = CreateTuroriaForm(request.POST)
        if form.is_valid():
            url = reverse('main')
            return HttpResponseRedirect(url)
    return render(request,'create/tutoria/agendarTutoria.html',{
        'form':form
    })
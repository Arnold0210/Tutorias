from django.shortcuts import render
from django.http import HttpResponseRedirect
from django.core.urlresolvers import reverse
from django.views.generic import CreateView,ListView
from apps.Horario.models import Horario
from apps.Horario.forms import CreateHorarioForm,CreateTuroria
from django.core.urlresolvers import reverse_lazy
# Create your views here.
class CreateHorarioView(CreateView):
    model = Horario
    form_class = CreateHorarioForm
    template_name = 'create/horario/HorarioCreate.html'
    success_url = reverse_lazy('main')

class ListhorarioView(ListView):
    model = Horario
    template_name = 'create/horario/HorarioList.html'

def TutoriasView(request):
    form = CreateTuroria()
    if request.method== 'POST':
        form = CreateTuroria(request.POST)
        if form.is_valid():
            url = reverse('main')
            return HttpResponseRedirect(url)
    return render(request,'create/tutoria/agendarTutoria.html',{
        'form':form
    })
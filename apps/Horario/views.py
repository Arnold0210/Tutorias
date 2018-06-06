from django.shortcuts import render
from django.views.generic import CreateView,ListView
from apps.Horario.models import Horario
from apps.Horario.forms import CreateHorarioForm
from django.core.urlresolvers import reverse_lazy
# Create your views here.
class CreateHorarioView(CreateView):
    model = Horario
    form_class = CreateHorarioForm
    template_name = 'create/HorarioCreate.html'
    success_url = reverse_lazy('main')

class ListhorarioView(ListView):
    model = Horario
    template_name = 'create/HorarioList.html'
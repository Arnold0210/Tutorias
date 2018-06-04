from django.shortcuts import render
from django.views.generic import CreateView
from apps.Horario.models import Horario
from apps.Horario.forms import HorarioForm
from django.core.urlresolvers import reverse_lazy
# Create your views here.
class HorarioView(CreateView):
    model = Horario
    form_class = HorarioForm
    template_name ='create/HorarioCreate.html'
    success_url = reverse_lazy('home')
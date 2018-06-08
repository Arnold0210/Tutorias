from django.core.urlresolvers import reverse_lazy
from django.shortcuts import render
from apps.Materia.models import Materia
from apps.Materia.forms import CreateMateriaForm
from django.views.generic import CreateView,ListView
# Create your views here.
class CreateMateriaView(CreateView):
    model = Materia
    form_class = CreateMateriaForm
    template_name = 'create/materia/MateriaCreate.html'
    success_url = reverse_lazy('main')

class ListMateriaView(ListView):
    model = Materia
    template_name = 'views/Materia/materiaview.html'
from django.conf.urls import url
from django.contrib.auth.decorators import login_required
from django.views.generic import TemplateView
from apps.Materia.views import CreateMateriaView,ListMateriaView
urlpatterns = [
    url(r'^createmateria/' ,login_required(CreateMateriaView.as_view()),name='create_materia'),
    url(r'^listmateria/ ', login_required(ListMateriaView.as_view()), name='listmateria'),
    url(r'^$' , login_required(TemplateView.as_view(template_name='create/materia/MateriaIndexBase.html')), name='materiaindexbase'),

]
from django.conf.urls import url
from apps.Horario.views import CreateHorarioView,ListhorarioView,TutoriasView,CreateTutoriasView,correo
from .ajax import get_materia,get_horario
from django.views.generic.base import TemplateView
from django.contrib.auth.decorators import login_required
urlpatterns = [
    url(r'^create_horario/', login_required(CreateHorarioView.as_view()), name='createhorario'),
    url(r'^list_Horario/', login_required(ListhorarioView.as_view()), name='horariolist'),
    url(r'^$', login_required(TemplateView.as_view(template_name='create/horario/HorarioIndexBase.html')), name='horarioindexbase'),
    url(r'^agendartutoria/', login_required(correo), name='agendartutoria'),
    #url(r'^ajax/get_materia/$',get_materia,name='get_materia'),
    #url(r'^ajax/get_horarios/$',get_horario,name='get_horario'),
    #url(r'^ajax/horarios/$',load_materias,name='load_horario'),
    ##url(r'^ajax/materias/$',load_horarios,name='load_materia'),
]
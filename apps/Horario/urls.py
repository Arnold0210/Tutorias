from django.conf.urls import url
from apps.Horario.views import CreateHorarioView,ListhorarioView
from django.views.generic.base import TemplateView
from django.contrib.auth.decorators import login_required
urlpatterns = [
    url(r'^create_horario/', login_required(CreateHorarioView.as_view()), name='createhorario'),
    url(r'^list_Horario/', login_required(ListhorarioView.as_view()), name='horariolist'),
    url(r'^$', login_required(TemplateView.as_view(template_name='create/HorarioIndexBase.html')), name='horarioindexbase')
]
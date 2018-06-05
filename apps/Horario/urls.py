from django.conf.urls import url
from apps.Horario.views import HorarioView
from django.contrib.auth.decorators import login_required
urlpatterns = [
    url(r'^',login_required(HorarioView.as_view()),name='horario')
]
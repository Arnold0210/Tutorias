from django.conf.urls import url
from apps.Horario.views import HorarioView
urlpatterns = [
    url(r'^',HorarioView.as_view(),name='horario')
]
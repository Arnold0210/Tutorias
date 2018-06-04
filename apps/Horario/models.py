from django.db import models
from apps.User.models import User
#from django.contrib.auth.models import User
# Create your models here.
class Horario(models.Model):
    idHorario = models.IntegerField()
    dia = models.DateTimeField(null=False,blank=False)
    horaInicio = models.DateTimeField(help_text='Hora en que comienza el horario')
    horaFinal = models.DateTimeField(help_text='Hora en que finaliza el horario')
    usuario = models.ManyToManyField(User)
    def __str__(self):
        return '{} {} {}'.format(self.dia,self.horaInicio,self.horaFinal)
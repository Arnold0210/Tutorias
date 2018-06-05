import datetime

from django.db import models
from django.contrib.auth.models import AbstractUser

# Create your models here.
class User(AbstractUser):
    Administrador = 'Administrador'
    Estudiante = 'Estudiante'
    Profesor = 'Profesor'
    default = '------------'
    TYPE_USER_CHOICES =(
        (Administrador,'Administrador'),
        (Estudiante,'Estudiante'),
        (Profesor,'Profesor'),
    )
    tipoUsuario = models.TextField(max_length=20,choices=TYPE_USER_CHOICES,
                                   default=default,help_text='Seleccione el tipo usuario')
    def __str__(self):
        return '{} {}'.format(self.first_name,self.last_name)

from django.db import models
from apps.User.models import User
#from django.contrib.auth.models import User
# Create your models here.
class Materia(models.Model):
    codigo = models.CharField(max_length=7,primary_key=True,help_text='Codigo de la materia',error_messages={'max_length':'Solo se permite un identificador de 7 caracteres','required':'Este campo es necesario'})
    nombre = models.TextField(help_text='Nombre de la materia')
    usuario = models.ManyToManyField(User)
    def __str__(self):
        return '{}'.format(self.nombre)







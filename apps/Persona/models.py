from django.db import models
from apps.TipoUsuario.models import TipoUsuario
# Create your models here.
class Persona(models.Model):
    id = models.CharField(max_length=12,primary_key=True)
    nombres = models.TextField()
    apellidos = models.TextField()
    correo = models.EmailField()
    tipoUsuario = models.ForeignKey(TipoUsuario,null=False,blank=False,on_delete=models.CASCADE)
    def __str__(self):
        return '{} {}'.format(self.nombres,self.apellidos)

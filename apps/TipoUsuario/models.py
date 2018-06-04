from django.db import models

# Create your models here.
class TipoUsuario(models.Model):
    id = models.IntegerField(primary_key=True)
    Administrador = 'Administrador'
    Estudiante = 'Estudiante'
    Profesor = 'Profesor'
    TYPE_USER_CHOICES =(
        (Administrador,'Administrador'),
        (Estudiante,'Estudiante'),
        (Profesor,'Profesor'),
    )
    nombre = models.TextField(max_length=20,choices=TYPE_USER_CHOICES,
                              default='--------',
                              help_text='Seleccione el tipo usuario')
    def __str__(self):
        return '{}'.format(self.nombre)
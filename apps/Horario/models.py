from django.db import models
from apps.User.models import User
from apps.Materia.models import Materia
#from django.contrib.auth.models import User
# Create your models here.
class Horario(models.Model):
    defualt = '-------'
    DAYS_CHOICES =(
        ('Lunes','Lunes'),
        ('Martes','Martes'),
        ('Miercoles','Miercoles'),
        ('Jueves','Jueves'),
        ('Viernes','Viernes'),
        ('Sabado','Sabado'),
    )
    HOURS_CHOICES =(
        ('00:00','00:00'),('01:00','01:00'),('02:00','02:00'),('03:00','03:00'),('04:00','04:00'),
        ('05:00','05:00'),('06:00','06:00'),('07:00','07:00'),('08:00','08:00'),('09:00','09:00'),
        ('10:00','10:00'),('11:00','11:00'),('12:00','12:00'),('13:00','13:00'),('14:00','14:00'),
        ('15:00','15:00'),('16:00','16:00'),('17:00','17:00'),('18:00','18:00'),('19:00','19:00'),
        ('20:00','20:00'),('21:00','21:00'),('22:00','22:00'),('23:00','23:00'),
    )
    idHorario = models.IntegerField(primary_key=True)
    dia = models.TextField(choices=DAYS_CHOICES,default=defualt)
    horaInicio = models.TextField(choices=HOURS_CHOICES,default=defualt,help_text='Hora en que comienza el horario')
    horaFinal = models.TextField(choices=HOURS_CHOICES,default=defualt,help_text='Hora en que finaliza el horario')
    usuario = models.ManyToManyField(User)
    def __str__(self):
        return '{} {} {}'.format(self.dia,self.horaInicio,self.horaFinal)
class Tutoria(models.Model):
    profesor = models.ForeignKey(User,blank=False,null=False,on_delete=models.CASCADE,related_name='profesor')
    estudiante = models.ForeignKey(User,blank=True,null=True,on_delete=models.CASCADE,related_name='estudiante')
    horario = models.ForeignKey(Horario,blank=False,null=False,on_delete=models.CASCADE)
    materia = models.ForeignKey(Materia,blank=False,null=False,on_delete=models.CASCADE)
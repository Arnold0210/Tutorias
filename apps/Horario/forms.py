from django import forms
from django.contrib.admin import widgets
from django.shortcuts import render

from apps.User.models import User
from django.http import HttpResponse,HttpResponseRedirect
from apps.Horario.models import Horario
class  CreateHorarioForm(forms.ModelForm):
    class Meta:
        model = Horario
        fields = [
            'idHorario',
            'horaInicio',
            'horaFinal',
            'dia',
            'usuario',
        ]
        labels={
            'idHorario':'Codigo',
            'dia':'Dia',
            'horaInicio':'Hora Inicial',
            'horaFinal':'Hora Final',
            'usuario':'Profesor(es)',
        }
        widgets = {
            'idHorario':forms.TextInput(attrs={'placeholder':'Id'}),
            'dia':forms.Select(attrs={'placeholder':'dia'}),
            'horaInicio':forms.Select(attrs={'placeholder':'horaInicial'}),
            'horaFinal':forms.Select(attrs={'placeholder':'horaFinal'}),
            'usuario':forms.CheckboxSelectMultiple(User.objects.filter(tipoUsuario='Profesor')),
        }
from django import forms
from django.contrib.admin import widgets

from apps.Horario.models import Horario
class  HorarioForm(forms.ModelForm):
    class Meta:
        model = Horario
        fields = [
            'idHorario',
            'horaFinal',
            'dia',
            'horaInicio',
            'usuario',
        ]
        labels={
            'idHorario':'Codigo',
            'horaInicio':'Hora Inicio',
            'dia':'dia',
            'horaFinal':'Hora Final',
            'usuario':'Tipo User',
        }
        widgets = {
            'idHorario':forms.TextInput(attrs={'placeholder':'Id'}),
            'dia':forms.TextInput(attrs={'placeholder':'dia'}),
            'horaInicio':forms.TextInput    (),
            'horaFinal':forms.TextInput(),
            'usuario':forms.CheckboxSelectMultiple(),
        }
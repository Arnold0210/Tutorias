from django import forms
from apps.User.models import User
from apps.Horario.models import Horario,Tutoria
from apps.Materia.models import Materia
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
            'idHorario':'ID Horario',
            'dia':'Dia',
            'horaInicio':'Hora Inicial',
            'horaFinal':'Hora Final',
            'usuario':'Profesor(es)',
        }
        widgets = {
            'idHorario':forms.TextInput(attrs={'placeholder':'Id Horario'}),
            'dia':forms.Select(attrs={'placeholder':'dia'}),
            'horaInicio':forms.Select(attrs={'placeholder':'horaInicial'}),
            'horaFinal':forms.Select(attrs={'placeholder':'horaFinal'}),
            'usuario':forms.SelectMultiple(attrs={'placeholder':'usuario'}),
        }
    def __init__(self,*args,**kwargs):
        super(CreateHorarioForm, self).__init__(*args,**kwargs)
        self.fields['usuario'].queryset = User.objects.filter(tipoUsuario='Profesor')
class CreateTuroria(forms.ModelForm):
    profesor = forms.ModelChoiceField(
        label = u'Profesor',
        queryset = User.objects.filter(tipoUsuario='Profesor')
    )
    horario = forms.ModelChoiceField(
        label = u'Horario',
        queryset = Horario.objects.all()
    )
    materia = forms.ModelChoiceField(
        label = u'Materia',
        queryset = Materia.objects.all()
    )
    def __init__(self,*args,**kwargs):
        super(CreateTuroria, self).__init__(*args,**kwargs)
        self.fields['profesor'].queryset = User.objects.filter(tipoUsuario='Profesor')
        self.fields['materia'].queryset = Materia.objects.all()

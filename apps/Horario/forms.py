from django import forms
from apps.User.models import User
from apps.Horario.models import Horario,Tutoria
from apps.Materia.models import Materia
from django.http import request
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
class CreateTuroriaForm(forms.ModelForm):
    profesor = forms.Select()
    materia = forms.Select()
    horario = forms.Select()
    def __init__(self,*args,**kwargs):
        super(CreateTuroriaForm, self).__init__(*args,**kwargs)
        self.fields['materia'].queryset = Materia.objects.none()
        self.fields['horario'].queryset = Horario.objects.none()


class CreateTutoriasForm(forms.ModelForm):
    class Meta:
        model = Tutoria
        fields = [
            'materia',
            'profesor',
            'horario',
            'estudiante',
        ]
        labels = {
            'profesor':'Escoja un profesor:',
            'materia':'Escoja una materia',
            'horario':'Escoja un horario',
            'Estudiante':'Estudiante'
        }
        widgets ={
            'profesor':forms.Select(),#ModelChoiceField(queryset=User.objects.filter(tipoUsuario='Profesor').all()),
            'materia':forms.Select(),#ModelChoiceField(queryset=Materia.objects.all()),
            'horario':forms.Select(),#ModelChoiceField(queryset=Horario.objects.all()),
            'estudiante':forms.Select(),
        }
    def __init__(self,*args,**kwargs):
        super().__init__(*args,**kwargs)
        self.fields['profesor'].queryset =  User.objects.filter(tipoUsuario='Profesor')
        self.fields['estudiante'].queryset = User.objects.filter(tipoUsuario='Estudiante')
        #self.fields['materia'].queryset = Materia.objects.none()
        #self.fields['horario'].queryset = Horario.objects.none()
''' b= Materia.objects.all()
    Solicitud= Materia_seleccionada
    b= Materia.objects.filter(materia="Solicitud")'''
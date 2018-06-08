from django import forms
from apps.Materia.models import Materia
from apps.User.models import User


class CreateMateriaForm(forms.ModelForm):
    class Meta:
        model = Materia
        fields = [
            'codigo',
            'nombre',
            'usuario',
        ]
        labels = {
            'codigo':'Codigo Materia',
            'nombre':'Nombre Materia',
            'usuario':'Escoja el profesor que dicta la materia',
        }
        widgets = {
            'codigo':forms.TextInput(attrs={'Placeholder': 'Codigo Materia','max_length':'7'}),
            'nombre':forms.TextInput(attrs={'Placeholder': 'Nombre Materia'}),
            'usuario':forms.SelectMultiple(attrs={'Placeholder': 'Escoja un Profesor'})
        }
    def __init__(self,*args,**kwargs):
        super(CreateMateriaForm, self).__init__(*args,**kwargs)
        self.fields['usuario'].queryset = User.objects.filter(tipoUsuario='Profesor')

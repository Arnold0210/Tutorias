from django import forms
from apps.TipoUsuario.models import TipoUsuario
class  TipoUsuarioForm(forms.ModelForm):
    class Meta:
        model = TipoUsuario
        fields = [
            'id',
            'nombre',
        ]
        labels={
            'id':'Codigo',
            'nombre':'Tipo User',
        }
        widgets = {
            'id': forms.TextInput(),
            'nombre':forms.Select(),
            #'nombre':forms.TextInput(attrs={'placeholder':'Tipo de User'}),
        }
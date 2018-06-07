from django import forms

from apps.User.models import User
from django.contrib.auth.forms import UserCreationForm
class UserForm(UserCreationForm):
    email = forms.EmailField(required=True)
    class Meta:
        model = User
        fields = {"username",
                  "email",
                  "password1",
                  "password2",
                  "first_name",
                  "last_name",
                  "tipoUsuario"}

        widgets ={"first_name":forms.TextInput(attrs={'placeholder': 'Nombres'}),
                  "last_name":forms.TextInput(attrs={'placeholder': 'Apellidos'}),
                  "email":forms.EmailInput(attrs={'placeholder': '📧 Correo'}),
                  "username":forms.TextInput(attrs={'placeholder': '👤  User'}),
                  "password1":forms.PasswordInput(attrs={'placeholder': '🔑 Contraseña'}),
                  "password2":forms.PasswordInput(attrs={'placeholder': '🔑 Confirme su contraseña'}),
                  "tipoUsuario":forms.Select()}

        def save(self,commit=True):
            # noinspection PySuperArguments
            user = super(UserForm, self).save(commit=False)
            user.email = self.cleaned_data["email"]
            if commit:
                user.save()
            return user
        #clean email field
        def clean_email(self):
            email = self.cleaned_data["email"]
            if not "ucatolica.edu.co" in email:
                raise forms.ValidationError("Por favor utilice el correo Institucional")
            return  email

        def clean_email(self):
            email = self.cleaned_data["email"]
            try:
                User._default_manager.get(email=email)
            except User.DoesNotExist:
                return email
            raise forms.ValidationError('Ya existe un usuario usando este correo')
        #modificamos el método save() así podemos definir  user.is_active a False la primera vez que se registra
        def save(self, commit=True):
            user = super(UserForm, self).save(commit=False)
            user.email = self.cleaned_data['email']
            if commit:
                user.is_active = False # No está activo hasta que active el vínculo de verificación
                user.save()
            return user
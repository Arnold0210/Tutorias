# Proyecto Sistemas de Información

## Desarrollador:
### Arnold Julian Herrera Quiñones - 625569 Estudiante Universidad Católica de Colombia (Backend)
### Hector Guillermo Rodriguez Gomez - 625478 Estudiante Ingeniería de Sistemas (Frontend)
---
# Sistema de Tutorias Ucatolica
---
Presentado a: Jaime Fernando Perez
---
Este proyecto se basa en una aplicación web donde se permite el registro de usuarios de tipo: *Administrador*,*Estudiante*,*Profesor*, manejando el framework Django para la utilización de python como lenguaje para hacer el backend, se trabaja con un MTC(Model Template Controller), así mismo se utiliza recursos locales para aplicar estilos a la página web como también el uso de bootstrap 3 y 4.
Se utilizo un entorno virtual a traves de virtualenvwrapper y se utiliza una base de datos en mysql.
Este proyecto maneja un modelo heredado del sistema de usuarios ofrecido por Django a traves de la clase AbstractUser. Asi mismo tiene la funcionalidad de activar el usuario mediante un link de verificación y la recuperación de contraseña por medio de un correo de verificación y tiene las vistas protegidas para evitar el acceso a las urls de las sesiones sin tener una sesión activa.

---

---

## Integrantes:
1. Arnold Julian Herrera Quiñones (Desarrollador) - 625569
2. Cristhian Camilo Arce García (Tester) - 625577
3. Deivid Froilan Bernal Gutierrez (Arquitecto) - 625599
4. Hector Guillermo Rodriguez Gomez (Support) - 625478
5. Juan Felipe Sanchez Rincón (Support) - 625578
6. Karen Gisela Rodríguez Romero (Líder de proyecto) 625629

---

## Recursos utilizados:

---
1. mysqlclient==1.3.7
2. Django==1.9.6
3. Python34
4. pip 10.0.1
5. setuptools 39.2.0
6. virtualenvwrapper-win
7. xampp(Uso de phpmyadmin), también se puede utilizar mysqlworkbench
8. wheel 0.31.1
9. PyCharm PE(JetBrains) **Se utiliza este IDE para desarrollar el proyecto**
---

---
### Librerias Utilizadas
* django.db import models
* from django import forms
* from django.views.generic.base import TemplateView
* from django.contrib.auth.decorators import login_required
* from django.conf.urls import url
* from django.core.urlresolvers import reverse_lazy
* from django.contrib.sites.shortcuts import get_current_site
* from django.core.mail import EmailMessage
* from django.shortcuts import render
* from django.http import HttpResponseRedirect
* from django.core.urlresolvers import reverse
* from django.template.loader import render_to_string
* from django.contrib.auth.forms import UserCreationForm
* from django.contrib.auth.models import AbstractUser
* from django.contrib.auth.tokens import PasswordResetTokenGenerator
* from django.utils import six
* from .tokens import account_activation_token
* from django.shortcuts import render, redirect
* from django.contrib.auth import login
* from django.utils.encoding import force_bytes, force_text
* from django.utils.http import urlsafe_base64_encode, urlsafe_base64_decode
* from django.contrib.auth.models import User
* from .forms import *
* from .models import *
* from django.contrib.auth.views import login, password_reset,password_reset_done,password_reset_confirm,password_reset_complete,logout
* from django.contrib.auth.decorators import login_required
* from apps.User.views import signup
* from django.conf.urls import url,include,patterns
---

---
## Documentación Django:
---
* <https://www.youtube.com/playlist?list=PLsRdPvQ2xMkH8c2BOnQ_O1KZ9lyyL_eGB>
* <https://docs.djangoproject.com/en/2.0/howto/windows/>
* <https://docs.djangoproject.com/en/2.0/ref/templates/builtins/>
* <https://docs.djangoproject.com/en/1.9/>
* <https://docs.djangoproject.com/en/2.0/topics/forms/>
* <https://docs.djangoproject.com/en/2.0/ref/forms/widgets/>
* <https://www.youtube.com/results?search_query=envio+de+correos+django>
* <https://docs.djangoproject.com/en/2.0/ref/forms/fields/>
* <https://axiacore.com/blog/django-y-selects-encadenados/>
* <https://docs.djangoproject.com/en/2.0/_modules/django/forms/fields/>
* <https://djangobook.com/form-validation/>
* <https://docs.djangoproject.com/en/2.0/ref/forms/validation/>
* <https://docs.djangoproject.com/en/2.0/topics/http/shortcuts/>
* <https://medium.com/@frfahim/django-registration-with-confirmation-email-bb5da011e4ef>
* <https://github.com/fusionbox/django-verified-email-change/blob/master/verified_email_change/locale/es/LC_MESSAGES/django.po>
* <http://librosweb.es/libro/django_1_0/capitulo_12/el_entorno_de_sesiones_de_django.html>
* <http://apuntes-snicoper.readthedocs.io/es/latest/programacion/python/django/validacion_personalizada_campo_modelo.html>
* <https://es.stackoverflow.com/questions/61110/django-modificar-widget-select-lista-personalizada/61129>
* <https://steemit.com/utopian-io/@kit.andres/como-enviar-correos-electronicos-en-django-implementacion-de-formulario-de-contacto>
* <https://es.stackoverflow.com/questions/70012/como-enviar-un-mensaje-a-una-cuenta-gmail-desde-django>
* <https://stackoverflow.com/questions/25292052/send-email-confirmation-after-registration-django>
* <https://es.stackoverflow.com/questions/59626/mostrar-informacion-segun-el-usuario-logueado-clase-listview-django>
* <https://miguelgomez.io/django/extender-user-django/>
* <https://developer.mozilla.org/es/docs/Learn/Server-side/Django/Authentication>
* <https://docs.djangoproject.com/en/1.11/ref/contrib/admin/>
* <https://docs.djangoproject.com/en/1.9/topics/auth/customizing/#substituting-a-custom-user-model>
* <https://developer.mozilla.org/en-US/docs/Learn/Server-side/Django/Authentication>
* <http://www.secnot.com/django-registro-usuarios.html>
* <https://docs.djangoproject.com/en/1.10/ref/models/fields/#datefield>
* <https://www.youtube.com/watch?v=Gd-VwcCTl4Y&list=PLsRdPvQ2xMkH8c2BOnQ_O1KZ9lyyL_eGB&index=22>
* <http://librosweb.es/libro/django_1_0/capitulo_4/herencia_de_plantillas.html>
* <http://librosweb.es/libro/django_1_0/capitulo_3/como_procesa_una_peticion_django.html>
* <https://docs.djangoproject.com/es/2.0/intro/tutorial03/>
---

---
## Enlaces de descarga de los recursos
* <https://github.com/askdjango/meltingdjango/blob/master/packages/mysqlclient-1.3.7-cp34-none-win_amd64.whl> (Windows *64)
* <https://github.com/askdjango/meltingdjango/blob/master/packages/mysqlclient-1.3.7-cp34-none-win32.whl> (Windows x32)
* <https://github.com/pypa/wheel>
* <https://github.com/pypa/setuptools>
* <https://github.com/PyMySQL/mysqlclient-python>
* <https://www.djangoproject.com/>
* <https://www.apachefriends.org/es/download.html> (XAMPP)
* <https://www.jetbrains.com/pycharm/download/>
---

---
### **Nota**
**Si unicamente tiene xampp en su dispositivo instalado, es recomendable que cambie el puerto de la base de datos en el archivo settings.py por el 3306, o por el puerto de su preferencia.**
## Bogotá D.C Junio 2018 
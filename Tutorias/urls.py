"""Tutorias URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.9/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import url,include
from django.contrib import admin
from django.views.generic.base import TemplateView
from django.contrib.auth.views import login, password_reset,password_reset_done,password_reset_confirm,password_reset_complete
urlpatterns = [
    url(r'^admin/', admin.site.urls),
    url(r'^$', TemplateView.as_view(template_name='index.html'),name='home'),
    url(r'^login/',login, {'template_name':'login.html'}, name='login'),
    url(r'^olvido/', TemplateView.as_view(template_name='forgetpassword/Olvido.html'), name='olvido'),
    url(r'^contactenos/', TemplateView.as_view(template_name='prueba.php'),name='contactenos'),
    url(r'^persona/',include('apps.Persona.urls',namespace='persona')),
    url(r'^usuario/', include('apps.User.urls', namespace='usuario')),
    url(r'^materia/',include('apps.Materia.urls',namespace='materia')),
    url(r'^horario/',include('apps.Horario.urls',namespace='horario')),
    url(r'^tipousuario/',include('apps.TipoUsuario.urls',namespace='tipousuario')),
    url(r'^reset/password_reset/',password_reset,
        {'template_name':'forgetpassword/password_reset_form.html',
         'email_template_name':'forgetpassword/password_reset_email.html'},
         name = 'password_reset'),
    url(r'^reset/password_reset_done/',password_reset_done,
        {'template_name':'forgetpassword/password_reset_done.html'},
        name = 'password_reset_done'),
    url(r'^reset/(?P<uidb64>[0-9A-Za-z_\-]+)/(?P<token>.+)/$',password_reset_confirm,{'template_name':'forgetpassword/password_reset_confirm.html'},
        name ='password_reset_confirm'),
    url(r'^reset/done',password_reset_complete,
        {'template_name':'forgetpassword/password_reset_complete.html'},
        name ='password_reset_complete'),
]

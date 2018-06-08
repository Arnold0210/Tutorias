
from django.conf.urls import url
from django.contrib.auth.decorators import login_required
from django.views.generic import TemplateView
from apps.User.views import UserView,signup,activate,UserViewList, UserViewUpdate,userupdate

urlpatterns = [
    url(r'^activate/(?P<uidb64>[0-9A-Za-z_\-]+)/(?P<token>[0-9A-Za-z]{1,13}-[0-9A-Za-z]{1,20})/$',
        activate, name='activate'),
    url(r'^perfil/', login_required(UserViewList.as_view()), name='user_view'),
    url(r'^perfil/actualizar/(?P<pk>\d+)/$',UserViewUpdate.as_view(), name='user_update'),
]
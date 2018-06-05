
from django.conf.urls import url
from apps.User.views import UserView,signup,activate

urlpatterns = [
    #url(r'^$',UserView.as_view(),name='register'),
    url(r'^$',signup, name='signup'),
    url(r'^activate/(?P<uidb64>[0-9A-Za-z_\-]+)/(?P<token>[0-9A-Za-z]{1,13}-[0-9A-Za-z]{1,20})/$',
        activate, name='activate'),
]
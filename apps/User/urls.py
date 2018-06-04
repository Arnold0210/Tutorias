from django.conf.urls import url
from apps.User.views import UserView
urlpatterns = [
    url(r'^$',UserView.as_view(),name='usuario'),
]
__author__ = "Николай Витальевич Никоноров (Bitnik212)"
__date__ = "29.08.2023 05:28"

from django.urls import path
from django.views.generic import TemplateView
from rest_framework.urlpatterns import format_suffix_patterns
from drf_spectacular.views import SpectacularAPIView, SpectacularRedocView, SpectacularSwaggerView
from .AuthUserController import AuthUserController
from .UserController import UserController

urlpatterns = [
    path("user/create", UserController.as_view()),
    path("user/", AuthUserController.as_view()),
]

urlpatterns = format_suffix_patterns(urlpatterns)

urlpatterns += [
    path('schema/', SpectacularAPIView.as_view(), name='schema'),
    path('swagger-ui/', SpectacularSwaggerView.as_view(url_name='schema'), name='swagger-ui'),
    path('redoc/', SpectacularRedocView.as_view(url_name='schema'), name='redoc'),
]

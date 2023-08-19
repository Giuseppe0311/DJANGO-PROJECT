from django.urls import path, include
from .views.dbCreatetor.dbCreator import TenantCreator
from .views.TblTipoEmpresa.TblTipoEmpresa import *

urlpatterns = [
    path('api/tenant/<str:nombre>', TenantCreator.as_view(),name='api_nombre'),
    path('api/tipoEmpresa', TblTipoEmpresa.as_view(),name='api_nombre'),
    path('api/tipoEmpresa/<int:id>', TblTipoEmpresa.as_view(),name='api_nombre'),
]
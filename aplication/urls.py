from django.urls import path, include
from .views.dbCreatetor.dbCreator import *
from .views.TblTipoEmpresa.TblTipoEmpresa import *
from .views.MovContablesDNoDomici.MovContablesDNoDomici import MovContablesDNoDomici

urlpatterns = [
    path('api/tenant/<str:nombre>', TenantCreator.as_view(),name='api_nombre'),
    path('api/tipoEmpresa/', TblTipoEmpresa.as_view(),name='api_nombre'),
    path('api/tipoEmpresa/<int:id>', TblTipoEmpresa.as_view(),name='api_nombre'),
    path('api/movcontablesdnodomici/', MovContablesDNoDomici.as_view(),name='api_nombre'),
    path('api/movcontablesdnodomici/<int:id>', MovContablesDNoDomici.as_view(),name='api_nombre'),
]
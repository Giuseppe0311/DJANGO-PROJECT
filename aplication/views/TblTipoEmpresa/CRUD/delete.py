from django.db import connections
from django.db.utils import OperationalError
from rest_framework.response import Response
from aplication.serializers import TblTipoEmpresaSerializer

def delete_TbltipoEmpresa(codigo):
    try:
        with connections['default'].cursor() as cursor:
            cursor.execute("exec spp_mantenimiento_tbl_Tipo_Empresa @Codigo_Tipo_Empresa=%s, @Descripcion=%s ,@Estado=0, @Modo=3",[
            codigo,
            ''
            ])
        return True
    except OperationalError as e:
        return str(e)
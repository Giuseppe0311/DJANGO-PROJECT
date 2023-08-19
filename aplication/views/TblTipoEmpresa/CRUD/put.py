from django.db import connections
from django.db.utils import OperationalError
from rest_framework.response import Response
from aplication.serializers import TblTipoEmpresaSerializer

def put_TbltipoEmpresa(codigo,descripcion):
    try:
        with connections['default'].cursor() as cursor:
            cursor.execute("exec spp_mantenimiento_tbl_Tipo_Empresa @Codigo_Tipo_Empresa=%s,@Estado=1, @Descripcion=%s , @Modo=2",[
            codigo,
            descripcion,
            ])
        return True
    except OperationalError as e:
        return str(e)

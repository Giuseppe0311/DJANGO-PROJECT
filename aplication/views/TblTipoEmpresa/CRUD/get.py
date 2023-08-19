
from django.db import connections
from django.db.utils import OperationalError
from rest_framework.response import Response
from aplication.serializers import TblTipoEmpresaSerializer

def get_TbltipoEmpresa():
    try:
         with connections['default'].cursor() as cursor:
                    cursor.execute("SELECT * FROM Tbl_Tipo_Empresa")
                    rows = cursor.fetchall()
                    data=[]
                    for row in rows:
                        data.append({'codigo_tipo_empresa':row[0],'descripcion':row[1].strip(),'estado':row[2]})
                    return data
    except OperationalError as e:
                return str(e)
def get_byid_TbltipoEmpresa(id):
    try:
        with connections['default'].cursor() as cursor:
                    cursor.execute("SELECT * FROM Tbl_Tipo_Empresa WHERE Codigo_Tipo_Empresa=%s",[id])
                    rows = cursor.fetchall()
                    data=[]
                    for row in rows:
                        data.append({'codigo_tipo_empresa':row[0],'descripcion':row[1].strip(),'estado':row[2]})
                    return data
    except OperationalError as e:
                return str(e)
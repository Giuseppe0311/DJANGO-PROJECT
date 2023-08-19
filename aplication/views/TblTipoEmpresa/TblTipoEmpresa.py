from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from django.db.utils import OperationalError
from aplication.serializers import TblTipoEmpresaSerializer
from ..TblTipoEmpresa.CRUD.get import get_TbltipoEmpresa,get_byid_TbltipoEmpresa
from ..TblTipoEmpresa.CRUD.post import post_TbltipoEmpresa
from ..TblTipoEmpresa.CRUD.put import put_TbltipoEmpresa
from ..TblTipoEmpresa.CRUD.delete import delete_TbltipoEmpresa

class TblTipoEmpresa (APIView):
    def get(self, request,id=None):
        if id is None:
            try:
                data = get_TbltipoEmpresa()
                serializer = TblTipoEmpresaSerializer(data, many=True)
                return Response(serializer.data, status=200)
            except OperationalError as e:
                return Response(f"Error al conectar a la nueva base de datos: {str(e)}", status=500)
        else:
            try:
                    data = get_byid_TbltipoEmpresa(id)
                    serializer = TblTipoEmpresaSerializer(data, many=True)
                    return Response(serializer.data, status=200)
            except OperationalError as e:
                return Response(f"Error al conectar a la nueva base de datos: {str(e)}", status=500)
    def post(self,request):
                serializer = TblTipoEmpresaSerializer(data=request.data)    
                if serializer.is_valid():
                    codigo = request.data.get('codigo_tipo_empresa')
                    descripcion = request.data.get('descripcion')
                    if post_TbltipoEmpresa(codigo,descripcion)==True:
                        return Response({"message":"data saved successful"}, status=200)
                    else:
                        return Response(f"Error al conectar a la nueva base de datos: {post_TbltipoEmpresa(codigo, descripcion)}", status=status.HTTP_500_INTERNAL_SERVER_ERROR)
                else:
                    return Response(serializer.errors, status=400)
    def put(self,request,id=None):
        if id is None:
              return Response({"message":"Debe especificar un id"},status=400)
        else:
            serializer=  TblTipoEmpresaSerializer(data=request.data)
            if serializer.is_valid():
                codigo = request.data.get('codigo_tipo_empresa')
                descripcion = request.data.get('descripcion')
                estado = request.data.get('estado')
                print(estado)
                if put_TbltipoEmpresa(codigo,descripcion)==True:
                    return Response({"message":"data updated successful"}, status=200)
                else:
                    return Response(f"Error al conectar a la nueva base de datos: {put_TbltipoEmpresa(codigo, descripcion)}", status=status.HTTP_500_INTERNAL_SERVER_ERROR)
    def delete(self,request,id=None):
        if id is None:
            return Response({"message":"Debe especificar un id"},status=400)
        else:
            if delete_TbltipoEmpresa(id)==True:
                return Response({"message":"data deleted successful"}, status=200)
            else:
                return Response(f"Error al conectar a la nueva base de datos: {delete_TbltipoEmpresa(id)}", status=status.HTTP_500_INTERNAL_SERVER_ERROR)
             

from django.shortcuts import render
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from django.db import connection,connections
from django.conf import settings
from django.db.utils import OperationalError
from aplication.serializers import TblTipoEmpresaSerializer
import os 

class TblTipoEmpresa (APIView):
    def get(self, request,id=None):
        if id is None:
            try:
                with connections['default'].cursor() as cursor:
                    cursor.execute("SELECT * FROM Tbl_Tipo_Empresa")
                    rows = cursor.fetchall()
                    data=[]
                    for row in rows:
                        data.append({'codigo_tipo_empresa':row[0],'descripcion':row[1].strip(),'estado':row[2]})
                    serializer = TblTipoEmpresaSerializer(data, many=True)
                    return Response(serializer.data, status=200)
            except OperationalError as e:
                return Response(f"Error al conectar a la nueva base de datos: {str(e)}", status=500)
        else:
            try:
                with connections['default'].cursor() as cursor:
                    cursor.execute("SELECT * FROM Tbl_Tipo_Empresa WHERE Codigo_Tipo_Empresa=%s",[id])
                    rows = cursor.fetchall()
                    data=[]
                    for row in rows:
                        data.append({'codigo_tipo_empresa':row[0],'descripcion':row[1].strip(),'estado':row[2]})
                    serializer = TblTipoEmpresaSerializer(data, many=True)
                    return Response(serializer.data, status=200)
            except OperationalError as e:
                return Response(f"Error al conectar a la nueva base de datos: {str(e)}", status=500)
    def post(self,request):
            try:
                serializer = TblTipoEmpresaSerializer(data=request.data)    
                print(serializer)
                if serializer.is_valid():
                    print(serializer.is_valid())
                    codigo = request.data.get('codigo_tipo_empresa')
                    descripcion = request.data.get('descripcion')
                    try:
                        with connections['default'].cursor() as cursor:

                            cursor.execute("exec spp_mantenimiento_tbl_Tipo_Empresa @Codigo_Tipo_Empresa=%s, @Descripcion=%s ,@Estado= 1, @Modo=1",[
                                codigo,
                                descripcion,
                            ])
                            return Response("exito ingresando a la base de datos", status=200)
                    except OperationalError as e:
                        return Response(f"Error al conectar a la nueva base de datos: {str(e)}", status=500)
                else:
                    return Response(serializer.errors, status=400)
            except OperationalError as e:
                return Response(f"Error al conectar a la nueva base de datos: {str(e)}", status=500)
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from django.db.utils import OperationalError
from aplication.serializers import MovcontablesdnodomiciSerializer
from ..MovContablesDNoDomici.CRUD.get import get_MovContablesDNoDomici,get_byid_MovContablesDNoDomici
from ..MovContablesDNoDomici.CRUD.post import post_MovContablesDNoDomici



class MovContablesDNoDomici (APIView):
    def get(self, request,id=None):
        if id is None:
            try:
                data = get_MovContablesDNoDomici()
                serializer = MovcontablesdnodomiciSerializer(data, many=True)
                return Response(serializer.data, status=200)
            except OperationalError as e:
                return Response(f"Error al conectar a la nueva base de datos: {str(e)}", status=500)
        else:
            try:
                    data = get_byid_MovContablesDNoDomici(id)
                    serializer = MovcontablesdnodomiciSerializer(data, many=True)
                    return Response(serializer.data, status=200)
            except OperationalError as e:
                return Response(f"Error al conectar a la nueva base de datos: {str(e)}", status=500)
    def post(self,request):
                serializer = MovcontablesdnodomiciSerializer(data=request.data)    
                if serializer.is_valid():
                    idNoDomiciliado = request.data.get('idNoDomiciliado')
                    Movcontable_d = request.data.get('Movcontable_d')
                    CodUnidadEconomica = request.data.get('CodUnidadEconomica')
                    TipoDocCredFiscal = request.data.get('TipoDocCredFiscal')
                    NroDocDUA = request.data.get('NroDocDUA')
                    AnioDuaCredFiscal = request.data.get('AnioDuaCredFiscal')
                    MontoRetIGV = request.data.get('MontoRetIGV')
                    Pais = request.data.get('Pais')
                    NombreNoDomiciliado = request.data.get('NombreNoDomiciliado')
                    RentaBruta = request.data.get('RentaBruta')
                    DeduccionCosto = request.data.get('DeduccionCosto')
                    RentaNeta = request.data.get('RentaNeta')
                    TasaRetencion = request.data.get('TasaRetencion')
                    ImpuestoRetenido = request.data.get('ImpuestoRetenido')
                    Convenio2Imposicion = request.data.get('Convenio2Imposicion')
                    TipoRenta = request.data.get('TipoRenta')
                    AplicaArt76 = request.data.get('AplicaArt76')
                    Estado = request.data.get('Estado')
                    Modo = request.data.get('Modo')
                    result=  post_MovContablesDNoDomici(idNoDomiciliado, Movcontable_d, CodUnidadEconomica, TipoDocCredFiscal,
                    NroDocDUA, AnioDuaCredFiscal, MontoRetIGV, Pais, NombreNoDomiciliado, RentaBruta, DeduccionCosto,
                    RentaNeta, TasaRetencion, ImpuestoRetenido, Convenio2Imposicion, TipoRenta, AplicaArt76, Estado, Modo)
                    if result==True:
                        return Response({"message":"data created successful"}, status=200)
                    else:
                        return Response(f"Error al conectar a la nueva base de datos: {result}", status=status.HTTP_500_INTERNAL_SERVER_ERROR)
                else:
                    return Response(serializer.errors, status=400)










    # def put(self,request,id=None):
    #     if id is None:
    #           return Response({"message":"Debe especificar un id"},status=400)
    #     else:
    #         serializer=  TblTipoEmpresaSerializer(data=request.data)
    #         if serializer.is_valid():
    #             codigo = request.data.get('codigo_tipo_empresa')
    #             descripcion = request.data.get('descripcion')
    #             estado = request.data.get('estado')
    #             print(estado)
    #             if put_TbltipoEmpresa(codigo,descripcion)==True:
    #                 return Response({"message":"data updated successful"}, status=200)
    #             else:
    #                 return Response(f"Error al conectar a la nueva base de datos: {put_TbltipoEmpresa(codigo, descripcion)}", status=status.HTTP_500_INTERNAL_SERVER_ERROR)
    # def delete(self,request,id=None):
    #     if id is None:
    #         return Response({"message":"Debe especificar un id"},status=400)
    #     else:
    #         if delete_TbltipoEmpresa(id)==True:
    #             return Response({"message":"data deleted successful"}, status=200)
    #         else:
    #             return Response(f"Error al conectar a la nueva base de datos: {delete_TbltipoEmpresa(id)}", status=status.HTTP_500_INTERNAL_SERVER_ERROR)
             

            
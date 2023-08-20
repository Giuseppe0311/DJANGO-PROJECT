from django.db import connections
from django.db.utils import OperationalError


def delete_MovContablesDNoDomici(codigo):
    try:
        with connections['default'].cursor() as cursor:
           cursor.execute(
                "exec spp_Mantenimiento_MovContablesDNoDomici "
                "@idNoDomiciliado=%s, @Movcontable_d='', @CodUnidadEconomica='', @TipoDocCredFiscal='', "
                "@NroDocDUA='chacralco', @AnioDuaCredFiscal='toro', @MontoRetIGV=12.5, @Pais='', @NombreNoDomiciliado='', "
                "@RentaBruta=12.5, @DeduccionCosto=12.50, @RentaNeta=12.5, @TasaRetencion=12.5, @ImpuestoRetenido=12.5, "
                "@Convenio2Imposicion='', @TipoRenta='', @AplicaArt76='', @Estado=0, @Modo=3",
                [
                    codigo
                ]
            )
        return True
    except OperationalError as e:
        return str(e)
from django.db import connections
from django.db.utils import OperationalError

def put_MovContablesDNoDomici(idNoDomiciliado, Movcontable_d, CodUnidadEconomica, TipoDocCredFiscal,
                                NroDocDUA, AnioDuaCredFiscal, MontoRetIGV, Pais, NombreNoDomiciliado,
                                RentaBruta, DeduccionCosto, RentaNeta, TasaRetencion, ImpuestoRetenido,
                                Convenio2Imposicion, TipoRenta, AplicaArt76,):
    try:
        with connections['default'].cursor() as cursor:
            cursor.execute(
                "exec spp_Mantenimiento_MovContablesDNoDomici "
                "@idNoDomiciliado=%s, @Movcontable_d=%s, @CodUnidadEconomica=%s, @TipoDocCredFiscal=%s, "
                "@NroDocDUA=%s, @AnioDuaCredFiscal=%s, @MontoRetIGV=%s, @Pais=%s, @NombreNoDomiciliado=%s, "
                "@RentaBruta=%s, @DeduccionCosto=%s, @RentaNeta=%s, @TasaRetencion=%s, @ImpuestoRetenido=%s, "
                "@Convenio2Imposicion=%s, @TipoRenta=%s, @AplicaArt76=%s, @Estado=1, @Modo=2",
                [
                    idNoDomiciliado, Movcontable_d, CodUnidadEconomica, TipoDocCredFiscal,
                    NroDocDUA, AnioDuaCredFiscal, MontoRetIGV, Pais, NombreNoDomiciliado,
                    RentaBruta, DeduccionCosto, RentaNeta, TasaRetencion, ImpuestoRetenido,
                    Convenio2Imposicion, TipoRenta, AplicaArt76,
                ]
            )
        return True
    except OperationalError as e:
        return str(e)
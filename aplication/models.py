from django.db import models

# Create your models here.
class TblTipoEmpresa(models.Model):
    codigo_tipo_empresa = models.AutoField(primary_key=True)  # Field name made lowercase.
    descripcion = models.CharField(db_column='Descripcion', max_length=30, db_collation='Modern_Spanish_CI_AS',blank=True,null=True)  # Field name made lowercase.
    estado = models.BooleanField(db_column='Estado', null=True,blank=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Tbl_Tipo_Empresa'

class Movcontablesdnodomici(models.Model):
    idnodomiciliado = models.AutoField(db_column='idNoDomiciliado', primary_key=True)  # Field name made lowercase.
    movcontable_d = models.CharField(db_column='Movcontable_d', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    codunidadeconomica = models.CharField(db_column='CodUnidadEconomica', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    tipodoccredfiscal = models.CharField(db_column='TipoDocCredFiscal', max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nrodocdua = models.CharField(db_column='NroDocDUA', max_length=45, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    anioduacredfiscal = models.CharField(db_column='AnioDuaCredFiscal', max_length=4, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    montoretigv = models.DecimalField(db_column='MontoRetIGV', max_digits=18, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    pais = models.CharField(db_column='Pais', max_length=7, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nombrenodomiciliado = models.CharField(db_column='NombreNoDomiciliado', max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    rentabruta = models.DecimalField(db_column='RentaBruta', max_digits=18, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    deduccioncosto = models.DecimalField(db_column='DeduccionCosto', max_digits=18, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    rentaneta = models.DecimalField(db_column='RentaNeta', max_digits=18, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    tasaretencion = models.DecimalField(db_column='TasaRetencion', max_digits=10, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    impuestoretenido = models.DecimalField(db_column='ImpuestoRetenido', max_digits=18, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    convenio2imposicion = models.CharField(db_column='Convenio2Imposicion', max_length=7, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    tiporenta = models.CharField(db_column='TipoRenta', max_length=7, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    aplicaart76 = models.CharField(db_column='AplicaArt76', max_length=1, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    estado = models.CharField(db_column='Estado', max_length=1, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'MovContablesDNoDomici'
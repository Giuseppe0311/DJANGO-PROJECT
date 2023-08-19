# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Accesos(models.Model):
    idacceso = models.BigAutoField(db_column='idAcceso', primary_key=True)  # Field name made lowercase.
    idusuario = models.BigIntegerField(db_column='idUsuario')  # Field name made lowercase.
    idsistema = models.BigIntegerField(db_column='idSistema')  # Field name made lowercase.
    idnivel = models.BigIntegerField(db_column='idNivel')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Accesos'


class ActividadCcto(models.Model):
    clave = models.IntegerField(db_column='CLAVE', blank=True, null=True)  # Field name made lowercase.
    cod_crp = models.CharField(db_column='COD_CRP', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    unidade = models.CharField(db_column='UNIDADE', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    codccosto = models.CharField(db_column='CODCCOSTO', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    descrip = models.CharField(db_column='DESCRIP', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Actividad_CCTO'


class Banco(models.Model):
    idbanco = models.AutoField(db_column='IdBanco', primary_key=True)  # Field name made lowercase.
    ctacontable = models.CharField(db_column='CtaContable', max_length=12, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    descripcion = models.CharField(db_column='Descripcion', max_length=60, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    ctabancaria = models.CharField(db_column='CtaBancaria', max_length=30, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    codmoneda = models.CharField(db_column='CodMoneda', max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nrooperacion = models.IntegerField(db_column='NroOperacion', blank=True, null=True)  # Field name made lowercase.
    nrocheque = models.IntegerField(db_column='NroCheque', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField(db_column='Estado', blank=True, null=True)  # Field name made lowercase.
    idempresa = models.BigIntegerField(db_column='idEmpresa', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Banco'


class Crp(models.Model):
    idcrp = models.AutoField(db_column='IdCRP', primary_key=True)  # Field name made lowercase.
    crp = models.CharField(db_column='CRP', max_length=10, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    descripcion = models.CharField(db_column='Descripcion', max_length=50, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    abreviatura = models.CharField(db_column='Abreviatura', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    codunidadeconomica = models.CharField(db_column='CodUnidadEconomica', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    relacion = models.CharField(db_column='Relacion', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    codzona = models.CharField(db_column='CodZona', max_length=6, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField(db_column='Estado', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'CRP'


class Centrocosto(models.Model):
    idcentrocosto = models.AutoField(db_column='IdCentroCosto', primary_key=True)  # Field name made lowercase.
    codcentrocosto = models.CharField(db_column='CodCentroCosto', max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    descripcion = models.CharField(db_column='Descripcion', max_length=60, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    cctadestino = models.CharField(db_column='CctaDestino', max_length=20, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    ctadebe = models.CharField(db_column='ctaDebe', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    ctahaber = models.CharField(db_column='ctaHaber', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nivel = models.CharField(db_column='Nivel', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField(db_column='Estado', blank=True, null=True)  # Field name made lowercase.
    idempresa = models.BigIntegerField(db_column='IdEmpresa', blank=True, null=True)  # Field name made lowercase.
    porcenta = models.IntegerField(db_column='Porcenta', blank=True, null=True)  # Field name made lowercase.
    ctadebe2 = models.CharField(db_column='CtaDebe2', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    porcenta2 = models.IntegerField(db_column='Porcenta2', blank=True, null=True)  # Field name made lowercase.
    ctadebe3 = models.CharField(db_column='CtaDebe3', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    porcenta3 = models.IntegerField(db_column='Porcenta3', blank=True, null=True)  # Field name made lowercase.
    ctadebe4 = models.CharField(db_column='CtaDebe4', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    porcenta4 = models.IntegerField(db_column='Porcenta4', blank=True, null=True)  # Field name made lowercase.
    tipo = models.CharField(db_column='Tipo', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'CentroCosto'


class Cierre(models.Model):
    anniocontable = models.CharField(db_column='AnnioContable', max_length=4, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    mescontable = models.CharField(db_column='MesContable', max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    desmescontable = models.CharField(db_column='DesMesContable', max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    cierre = models.BooleanField(db_column='Cierre', blank=True, null=True)  # Field name made lowercase.
    zona = models.CharField(max_length=6, db_collation='Modern_Spanish_CI_AS')
    unidad = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS')

    class Meta:
        managed = False
        db_table = 'Cierre'


class Cronogramavctosunat(models.Model):
    codigo_vencimiento = models.AutoField(db_column='Codigo_vencimiento')  # Field name made lowercase.
    periodo = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    digito0 = models.DateTimeField(db_column='Digito0', blank=True, null=True)  # Field name made lowercase.
    digito1 = models.DateTimeField(db_column='Digito1', blank=True, null=True)  # Field name made lowercase.
    digito2y3 = models.DateTimeField(db_column='Digito2y3', blank=True, null=True)  # Field name made lowercase.
    digito4y5 = models.DateTimeField(db_column='Digito4y5', blank=True, null=True)  # Field name made lowercase.
    digito6y7 = models.DateTimeField(db_column='Digito6y7', blank=True, null=True)  # Field name made lowercase.
    digito8y9 = models.DateTimeField(db_column='Digito8y9', blank=True, null=True)  # Field name made lowercase.
    buenoscontri = models.DateTimeField(db_column='BuenosContri', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField(db_column='Estado', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'CronoGramaVctoSunat'


class Detallenivelacceso(models.Model):
    iddetallenivelacceso = models.BigAutoField(db_column='idDetalleNivelAcceso', primary_key=True)  # Field name made lowercase.
    idnivelacceso = models.BigIntegerField(db_column='idNivelAcceso')  # Field name made lowercase.
    idmenusistema = models.BigIntegerField(db_column='idMenuSistema')  # Field name made lowercase.
    permitir = models.BooleanField(db_column='Permitir')  # Field name made lowercase.
    idsistema = models.BigIntegerField(db_column='idSistema', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'DetalleNivelAcceso'


class Empresa(models.Model):
    idempresa = models.IntegerField(db_column='IdEmpresa', blank=True, null=True)  # Field name made lowercase.
    razonsocial = models.CharField(db_column='RazonSocial', max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    ruc = models.CharField(db_column='RUC', max_length=11, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    rubro = models.CharField(db_column='Rubro', max_length=60, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    telefono = models.CharField(db_column='Telefono', max_length=12, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    direccion = models.CharField(db_column='Direccion', max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    ciudad = models.CharField(db_column='Ciudad', max_length=40, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    e_corr = models.IntegerField(blank=True, null=True)
    cantsucursal = models.IntegerField(db_column='CantSucursal', blank=True, null=True)  # Field name made lowercase.
    cantunidad = models.IntegerField(db_column='CantUnidad', blank=True, null=True)  # Field name made lowercase.
    regimen = models.CharField(db_column='Regimen', max_length=20, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    anioinicontable = models.CharField(db_column='AnioIniContable', max_length=4, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    porrenta = models.DecimalField(db_column='PorRenta', max_digits=12, decimal_places=6, blank=True, null=True)  # Field name made lowercase.
    porparticipatrab = models.IntegerField(db_column='PorParticipaTrab', blank=True, null=True)  # Field name made lowercase.
    codigo_tipo_empresa = models.IntegerField(db_column='Codigo_Tipo_Empresa', blank=True, null=True)  # Field name made lowercase.
    direccionple = models.CharField(db_column='DireccionPle', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Empresa'


class Entidadfinanciera(models.Model):
    idefinanciera = models.AutoField(db_column='IdEFinanciera')  # Field name made lowercase.
    codefinanciera = models.CharField(db_column='CodEFinanciera', max_length=3, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    descripcion = models.CharField(db_column='Descripcion', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'EntidadFinanciera'


class Financiera(models.Model):
    idbanco = models.AutoField(db_column='IdBanco', primary_key=True)  # Field name made lowercase.
    codbanco = models.CharField(db_column='CodBanco', max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    descripcion = models.CharField(db_column='Descripcion', max_length=90, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Financiera'


class Honomasticos(models.Model):
    idempleado = models.AutoField(db_column='IdEmpleado', primary_key=True)  # Field name made lowercase.
    nombres = models.CharField(db_column='Nombres', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    apellidos = models.CharField(db_column='Apellidos', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    direccion = models.CharField(db_column='Direccion', max_length=60, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    telefono = models.CharField(db_column='Telefono', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    cel = models.CharField(db_column='Cel', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    fechanac = models.DateTimeField(db_column='FechaNac', blank=True, null=True)  # Field name made lowercase.
    estado = models.CharField(db_column='Estado', max_length=1, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    correo = models.CharField(db_column='Correo', max_length=90, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Honomasticos'


class Maestrogrupocontable(models.Model):
    idmgc = models.AutoField(db_column='IdMGC', primary_key=True)  # Field name made lowercase.
    codmgc = models.CharField(db_column='CodMGC', max_length=50, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    mgc = models.CharField(db_column='MGC', max_length=50, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    sistema = models.CharField(db_column='Sistema', max_length=50, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    codzona = models.CharField(db_column='CodZona', max_length=6, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    codunidadeconomica = models.CharField(db_column='CodUnidadEconomica', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    anio = models.IntegerField(db_column='Anio')  # Field name made lowercase.
    apertura = models.IntegerField(db_column='Apertura', blank=True, null=True)  # Field name made lowercase.
    ene = models.IntegerField(db_column='Ene', blank=True, null=True)  # Field name made lowercase.
    feb = models.IntegerField(db_column='Feb', blank=True, null=True)  # Field name made lowercase.
    mar = models.IntegerField(db_column='Mar', blank=True, null=True)  # Field name made lowercase.
    abr = models.IntegerField(db_column='Abr', blank=True, null=True)  # Field name made lowercase.
    may = models.IntegerField(db_column='May', blank=True, null=True)  # Field name made lowercase.
    jun = models.IntegerField(db_column='Jun', blank=True, null=True)  # Field name made lowercase.
    jul = models.IntegerField(db_column='Jul', blank=True, null=True)  # Field name made lowercase.
    ago = models.IntegerField(db_column='Ago', blank=True, null=True)  # Field name made lowercase.
    sep = models.IntegerField(db_column='Sep', blank=True, null=True)  # Field name made lowercase.
    oct = models.IntegerField(db_column='Oct', blank=True, null=True)  # Field name made lowercase.
    nov = models.IntegerField(db_column='Nov', blank=True, null=True)  # Field name made lowercase.
    dic = models.IntegerField(db_column='Dic', blank=True, null=True)  # Field name made lowercase.
    anual = models.IntegerField(db_column='Anual', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField(db_column='Estado', blank=True, null=True)  # Field name made lowercase.
    codform = models.IntegerField(db_column='CodForm', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'MaestroGrupoContable'


class Menusistemas(models.Model):
    idmenusistema = models.BigAutoField(db_column='idMenuSistema', primary_key=True)  # Field name made lowercase.
    idsistema = models.BigIntegerField(db_column='idSistema')  # Field name made lowercase.
    grupomenus = models.CharField(db_column='GrupoMenus', max_length=250, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    descripcionmenu = models.CharField(db_column='DescripcionMenu', max_length=250, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    estadomenu = models.BooleanField(db_column='EstadoMenu')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'MenuSistemas'


class Moneda(models.Model):
    idmoneda = models.BigAutoField(db_column='IdMoneda', primary_key=True)  # Field name made lowercase.
    codmoneda = models.CharField(db_column='CodMoneda', max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    descripcion = models.CharField(db_column='Descripcion', max_length=18, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    simbolo = models.CharField(db_column='Simbolo', max_length=5, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField(db_column='Estado', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Moneda'


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


class MovcontablesC(models.Model):
    idmovcontables_c = models.AutoField(db_column='IdMovContables_C', primary_key=True)  # Field name made lowercase.
    anio = models.CharField(db_column='Anio', max_length=4, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    mes = models.CharField(db_column='Mes', max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    zona = models.CharField(db_column='Zona', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    codunidadeconomica = models.CharField(db_column='CodUnidadEconomica', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nrodoc = models.CharField(db_column='NroDoc', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    fechco = models.DateTimeField(db_column='FechCo', blank=True, null=True)  # Field name made lowercase.
    codmgc = models.CharField(db_column='CodMGC', max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    glosa = models.CharField(db_column='Glosa', max_length=200, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    estado = models.CharField(db_column='Estado', max_length=1, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'MovContables_C'


class MovcontablesD(models.Model):
    idmovcontable_d = models.AutoField(db_column='IDMovContable_D', primary_key=True)  # Field name made lowercase.
    idmovcontables_c = models.IntegerField(db_column='IdMovContables_C', blank=True, null=True)  # Field name made lowercase.
    codunidadeconomica = models.CharField(db_column='CodUnidadEconomica', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nrodocumento = models.CharField(db_column='NroDocumento', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    crp = models.CharField(db_column='CRP', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    codactividad = models.CharField(db_column='CodActividad', max_length=14, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    codpar = models.CharField(db_column='CodPar', max_length=14, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    codsubactividad = models.CharField(db_column='CodSubActividad', max_length=5, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    fechcontable = models.DateTimeField(db_column='FechContable', blank=True, null=True)  # Field name made lowercase.
    codmgc = models.CharField(db_column='CodMGC', max_length=3, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    clasemovimiento = models.CharField(db_column='ClaseMovimiento', max_length=1, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    ctadestino = models.CharField(db_column='CtaDestino', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    codigodocumentoreferencia = models.CharField(db_column='CodigoDocumentoReferencia', max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nrodocreferencia = models.CharField(db_column='NroDocReferencia', max_length=14, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    fechadocreferencia = models.DateTimeField(db_column='FechaDocReferencia', blank=True, null=True)  # Field name made lowercase.
    fechavencimiento = models.DateTimeField(db_column='FechaVencimiento', blank=True, null=True)  # Field name made lowercase.
    codigodocumentofuente = models.CharField(db_column='CodigoDocumentoFuente', max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nrodocumentofuente = models.CharField(db_column='NroDocumentoFuente', max_length=14, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    fechadocumentofuente = models.DateTimeField(db_column='FechaDocumentoFuente', blank=True, null=True)  # Field name made lowercase.
    codigoctabancaria = models.CharField(db_column='CodigoCtaBancaria', max_length=12, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nrooperacion = models.CharField(db_column='NroOperacion', max_length=40, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nrocheque = models.CharField(db_column='NroCheque', max_length=40, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    cuentanaturaleza = models.CharField(db_column='CuentaNaturaleza', max_length=12, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    codcuenta = models.CharField(db_column='CodCuenta', max_length=12, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    centrocosto = models.CharField(db_column='CentroCosto', max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    tipomov = models.CharField(db_column='TipoMov', max_length=1, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    glosa = models.CharField(db_column='Glosa', max_length=250, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    orden = models.CharField(db_column='Orden', max_length=250, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    afecto = models.BooleanField(db_column='Afecto', blank=True, null=True)  # Field name made lowercase.
    moneda = models.BigIntegerField(db_column='Moneda', blank=True, null=True)  # Field name made lowercase.
    tipocambio = models.DecimalField(db_column='TipoCambio', max_digits=7, decimal_places=3, blank=True, null=True)  # Field name made lowercase.
    impdebe = models.DecimalField(db_column='impDebe', max_digits=15, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    imphaber = models.DecimalField(db_column='impHaber', max_digits=15, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    impdebedolar = models.DecimalField(db_column='impDebeDolar', max_digits=15, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    imphaberdolar = models.DecimalField(db_column='impHaberDolar', max_digits=15, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    tipoanexo = models.CharField(db_column='TipoAnexo', max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    codanexo = models.CharField(db_column='CodAnexo', max_length=14, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    codpro = models.CharField(db_column='codPro', max_length=14, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    u_codi = models.CharField(max_length=20, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    datusu = models.DateTimeField(db_column='datUsu', blank=True, null=True)  # Field name made lowercase.
    correlativo = models.CharField(db_column='Correlativo', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    estado = models.CharField(max_length=1, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    destino = models.CharField(db_column='Destino', max_length=1, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    anexo = models.CharField(db_column='Anexo', max_length=11, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    gastointpersonal = models.BooleanField(db_column='GastoIntPersonal', blank=True, null=True)  # Field name made lowercase.
    cocach = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    nomanx = models.CharField(max_length=250, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    codin = models.CharField(db_column='codIn', max_length=24, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    tipdca = models.CharField(max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    nrodca = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    reten = models.BooleanField(blank=True, null=True)
    rigv = models.BooleanField(blank=True, null=True)
    corrigv = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    codaduana = models.CharField(db_column='CodAduana', max_length=3, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    fechdua = models.DateTimeField(db_column='FechDUA', blank=True, null=True)  # Field name made lowercase.
    coddua = models.CharField(db_column='CodDUA', max_length=30, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    isc = models.BooleanField(db_column='ISC', blank=True, null=True)  # Field name made lowercase.
    tipooper = models.IntegerField(db_column='tipoOper', blank=True, null=True)  # Field name made lowercase.
    nrodetrac = models.CharField(db_column='NroDetrac', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    fechadetrac = models.DateTimeField(db_column='FechaDetrac', blank=True, null=True)  # Field name made lowercase.
    codigodetraccion = models.CharField(db_column='CodigoDetraccion', max_length=3, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    fecha_refcomprobmodi = models.DateTimeField(db_column='Fecha_RefComprobModi', blank=True, null=True)  # Field name made lowercase.
    tipo_refcomprobmodi = models.CharField(db_column='Tipo_RefComprobModi', max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    serie_refcomprobmodi = models.CharField(db_column='Serie_RefComprobModi', max_length=4, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nro_refcomprobmodi = models.CharField(db_column='Nro_RefComprobModi', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    codigopercepcion = models.CharField(db_column='CodigoPercepcion', max_length=24, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    porcentajepercepcion = models.DecimalField(db_column='PorcentajePercepcion', max_digits=10, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    cuentaabono = models.CharField(db_column='CuentaAbono', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    montoigv = models.DecimalField(db_column='MontoIGV', max_digits=12, decimal_places=3, blank=True, null=True)  # Field name made lowercase.
    numeropercepcion = models.CharField(db_column='NumeroPercepcion', max_length=11, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    fechapercepcion = models.DateTimeField(db_column='FechaPercepcion', blank=True, null=True)  # Field name made lowercase.
    montoretencion4 = models.DecimalField(db_column='MontoRetencion4', max_digits=10, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    tipomediopago = models.CharField(db_column='TipoMedioPago', max_length=3, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    montoisc = models.DecimalField(db_column='MontoISC', max_digits=10, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    montodetraccionivap = models.DecimalField(db_column='MontoDetraccionIvap', max_digits=10, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    montocuentaauxiliar = models.DecimalField(db_column='MontoCuentaAuxiliar', max_digits=10, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    montoicbper = models.DecimalField(db_column='MontoIcbPer', max_digits=10, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    montoretencionigv = models.DecimalField(db_column='MontoRetencionIGV', max_digits=18, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    cuentaccosto = models.CharField(db_column='CuentaCCosto', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'MovContables_D'


class Nivelaccesos(models.Model):
    idnivelacceso = models.BigAutoField(db_column='idNivelAcceso', primary_key=True)  # Field name made lowercase.
    nivelacceso = models.CharField(db_column='NivelAcceso', max_length=50, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    estado = models.BooleanField(db_column='Estado')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'NivelAccesos'


class Parametros(models.Model):
    idparametro = models.BigAutoField(db_column='idParametro', primary_key=True)  # Field name made lowercase.
    idempresa = models.BigIntegerField(db_column='idEmpresa')  # Field name made lowercase.
    clave = models.CharField(db_column='Clave', max_length=50, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    valor = models.CharField(db_column='Valor', max_length=800, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    subvalor = models.CharField(db_column='SubValor', max_length=800, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    estado = models.BooleanField(db_column='Estado')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Parametros'


class Parametrosmaestro(models.Model):
    idparametro = models.BigAutoField(db_column='idParametro')  # Field name made lowercase.
    idempresa = models.BigIntegerField(db_column='idEmpresa')  # Field name made lowercase.
    clave = models.CharField(db_column='Clave', max_length=50, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    valor = models.CharField(db_column='Valor', max_length=800, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    subvalor = models.CharField(db_column='SubValor', max_length=800, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    estado = models.BooleanField(db_column='Estado')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ParametrosMaestro'


class Periodocontable(models.Model):
    idperiodocontable = models.CharField(db_column='IdPeriodoContable', max_length=18, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    periodocontable = models.CharField(db_column='PeriodoContable', max_length=18, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    tipoperiodocontable = models.CharField(db_column='TipoPeriodoContable', max_length=18, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    anio = models.CharField(db_column='Anio', max_length=18, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    mes = models.CharField(db_column='Mes', max_length=18, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'PeriodoContable'


class Plancuentascontables(models.Model):
    idplancuentascontables = models.AutoField(db_column='IdPlanCuentasContables')  # Field name made lowercase.
    codcuentacontable = models.CharField(db_column='CodCuentaContable', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    descripcion = models.CharField(db_column='Descripcion', max_length=150, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    ctadebe = models.CharField(db_column='CtaDebe', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    ctahaber = models.CharField(db_column='CtaHaber', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    ctacierre = models.CharField(db_column='CtaCierre', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    tipomovpccdb = models.CharField(db_column='TipoMovPCCDB', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nivelcuenta = models.CharField(db_column='NivelCuenta', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    tipocuenta = models.CharField(db_column='TipoCuenta', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    tipoanalisis = models.CharField(db_column='TipoAnalisis', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    convermoneda = models.CharField(db_column='ConverMoneda', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    manejodocumentpendientes = models.CharField(db_column='ManejoDocumentPendientes', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    ajusteinflacion = models.CharField(db_column='AjusteInflacion', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    validaautomatico = models.BooleanField(db_column='ValidaAutomatico', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField(db_column='Estado', blank=True, null=True)  # Field name made lowercase.
    idempresa = models.IntegerField(db_column='IdEmpresa', blank=True, null=True)  # Field name made lowercase.
    porcenta = models.IntegerField(db_column='Porcenta', blank=True, null=True)  # Field name made lowercase.
    ctadebe2 = models.CharField(db_column='CtaDebe2', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    porcenta2 = models.IntegerField(db_column='Porcenta2', blank=True, null=True)  # Field name made lowercase.
    ctadebe3 = models.CharField(db_column='CtaDebe3', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    porcenta3 = models.IntegerField(db_column='Porcenta3', blank=True, null=True)  # Field name made lowercase.
    ctadebe4 = models.CharField(db_column='CtaDebe4', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    porcenta4 = models.IntegerField(db_column='Porcenta4', blank=True, null=True)  # Field name made lowercase.
    ctapdt = models.CharField(db_column='CtaPDT', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    anio = models.CharField(db_column='Anio', max_length=6, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'PlanCuentasContables'


class Plancuentascontablesnew(models.Model):
    codcuentacontable = models.CharField(db_column='CodCuentaContable', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    descripcion = models.CharField(db_column='Descripcion', max_length=80, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    ctadebe = models.CharField(db_column='CtaDebe', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    ctahaber = models.CharField(db_column='CtaHaber', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    ctacierre = models.CharField(db_column='CtaCierre', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    tipomovpccdb = models.CharField(db_column='TipoMovPCCDB', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nivelcuenta = models.CharField(db_column='NivelCuenta', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    tipocuenta = models.CharField(db_column='TipoCuenta', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    tipoanalisis = models.CharField(db_column='TipoAnalisis', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    convermoneda = models.CharField(db_column='ConverMoneda', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    manejodocumentpendientes = models.CharField(db_column='ManejoDocumentPendientes', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    ajusteinflacion = models.CharField(db_column='AjusteInflacion', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    validaautomatico = models.BooleanField(db_column='ValidaAutomatico', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField(db_column='Estado', blank=True, null=True)  # Field name made lowercase.
    idempresa = models.IntegerField(db_column='IdEmpresa', blank=True, null=True)  # Field name made lowercase.
    porcenta = models.IntegerField(db_column='Porcenta', blank=True, null=True)  # Field name made lowercase.
    ctadebe2 = models.CharField(db_column='CtaDebe2', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    porcenta2 = models.IntegerField(db_column='Porcenta2', blank=True, null=True)  # Field name made lowercase.
    ctadebe3 = models.CharField(db_column='CtaDebe3', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    porcenta3 = models.IntegerField(db_column='Porcenta3', blank=True, null=True)  # Field name made lowercase.
    ctadebe4 = models.CharField(db_column='CtaDebe4', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    porcenta4 = models.IntegerField(db_column='Porcenta4', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'PlanCuentasContablesnew'


class Plancuentasmaestro(models.Model):
    idplancuentascontables = models.BigAutoField(db_column='IdPlanCuentasContables')  # Field name made lowercase.
    codcuentacontable = models.CharField(db_column='CodCuentaContable', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    descripcion = models.CharField(db_column='Descripcion', max_length=150, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    ctadebe = models.CharField(db_column='CtaDebe', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    ctahaber = models.CharField(db_column='CtaHaber', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    ctacierre = models.CharField(db_column='CtaCierre', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    tipomovpccdb = models.CharField(db_column='TipoMovPCCDB', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nivelcuenta = models.CharField(db_column='NivelCuenta', max_length=1, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    tipocuenta = models.CharField(db_column='TipoCuenta', max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    tipoanalisis = models.CharField(db_column='TipoAnalisis', max_length=1, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    convermoneda = models.CharField(db_column='ConverMoneda', max_length=1, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    manejodocumentpendientes = models.CharField(db_column='ManejoDocumentPendientes', max_length=3, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    ajusteinflacion = models.CharField(db_column='AjusteInflacion', max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    validaautomatico = models.BooleanField(db_column='ValidaAutomatico', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField(db_column='Estado', blank=True, null=True)  # Field name made lowercase.
    idempresa = models.IntegerField(db_column='IdEmpresa', blank=True, null=True)  # Field name made lowercase.
    porcenta = models.IntegerField(db_column='Porcenta', blank=True, null=True)  # Field name made lowercase.
    ctadebe2 = models.CharField(db_column='Ctadebe2', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    porcenta2 = models.IntegerField(db_column='Porcenta2', blank=True, null=True)  # Field name made lowercase.
    ctadebe3 = models.CharField(db_column='CtaDebe3', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    porcenta3 = models.IntegerField(db_column='Porcenta3', blank=True, null=True)  # Field name made lowercase.
    ctadebe4 = models.CharField(db_column='CtaDebe4', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    porcenta4 = models.IntegerField(db_column='Porcenta4', blank=True, null=True)  # Field name made lowercase.
    ctapdt = models.CharField(db_column='CtaPDT', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    anio = models.CharField(db_column='Anio', max_length=6, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'PlanCuentasMaestro'


class Sistemas(models.Model):
    id = models.IntegerField(db_column='ID')  # Field name made lowercase.
    namesystem = models.CharField(db_column='NameSystem', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    estado = models.SmallIntegerField(db_column='Estado', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Sistemas'


class TblAfbaja(models.Model):
    idbaja = models.AutoField(db_column='IdBaja', primary_key=True)  # Field name made lowercase.
    descripcion = models.CharField(db_column='Descripcion', max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField(db_column='Estado', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Tbl_AFBaja'


class TblAfcargo(models.Model):
    idcargo = models.AutoField(db_column='IdCargo', primary_key=True)  # Field name made lowercase.
    descripcion = models.CharField(db_column='Descripcion', max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    idempresa = models.IntegerField(db_column='idEmpresa', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField(db_column='Estado', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Tbl_AFCargo'


class TblAfdetalleproceso(models.Model):
    idproceso = models.ForeignKey('TblAfproceso', models.DO_NOTHING, db_column='IdProceso', blank=True, null=True)  # Field name made lowercase.
    iddetalleproceso = models.AutoField(db_column='IdDetalleProceso', primary_key=True)  # Field name made lowercase.
    depreciacionhistorica = models.DecimalField(db_column='DepreciacionHistorica', max_digits=18, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    depreciacionajustada = models.DecimalField(db_column='DepreciacionAjustada', max_digits=18, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    valorajustado = models.DecimalField(db_column='ValorAjustado', max_digits=18, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    depreciacionmensualcalculado = models.DecimalField(db_column='DepreciacionMensualCalculado', max_digits=18, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    idempresa = models.IntegerField(db_column='IdEmpresa', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField(db_column='Estado', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Tbl_AFDetalleProceso'


class TblAfestado(models.Model):
    idestado = models.AutoField(db_column='IdEstado', primary_key=True)  # Field name made lowercase.
    descripcion = models.CharField(db_column='Descripcion', max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'Tbl_AFEstado'


class TblAffamilia(models.Model):
    idfamilia = models.AutoField(db_column='Idfamilia', primary_key=True)  # Field name made lowercase.
    idgrupo = models.ForeignKey('TblAfgrupo', models.DO_NOTHING, db_column='IdGrupo', blank=True, null=True)  # Field name made lowercase.
    descripcion = models.CharField(db_column='Descripcion', max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    cuenta_compra = models.CharField(db_column='Cuenta_Compra', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    cuenta_venta = models.CharField(db_column='Cuenta_Venta', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    cuenta_contable = models.CharField(db_column='Cuenta_Contable', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    cuenta_mercaderia = models.CharField(db_column='Cuenta_Mercaderia', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    cuenta_prodmanufac = models.CharField(db_column='Cuenta_ProdManufac', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    orden = models.IntegerField(blank=True, null=True)
    estado = models.BooleanField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'Tbl_AFFamilia'


class TblAfgrupo(models.Model):
    idgrupo = models.AutoField(db_column='IdGrupo', primary_key=True)  # Field name made lowercase.
    descripcion = models.CharField(db_column='Descripcion', max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    cuenta_contable = models.CharField(db_column='Cuenta_Contable', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    idempresa = models.IntegerField(db_column='IdEmpresa', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'Tbl_AFGrupo'


class TblAfhistoricodepreciacion(models.Model):
    idafhistoricodepreciacion = models.AutoField(db_column='IdAFHistoricoDepreciacion')  # Field name made lowercase.
    idactivofijo = models.IntegerField(db_column='IdActivoFijo', blank=True, null=True)  # Field name made lowercase.
    idempresa = models.IntegerField(db_column='IdEmpresa', blank=True, null=True)  # Field name made lowercase.
    fechaproceso = models.CharField(db_column='FechaProceso', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    porcentajedeprecia = models.DecimalField(db_column='PorcentajeDeprecia', max_digits=18, decimal_places=4, blank=True, null=True)  # Field name made lowercase.
    monto = models.DecimalField(db_column='Monto', max_digits=18, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    idtipodocumento = models.IntegerField(db_column='idTipoDocumento', blank=True, null=True)  # Field name made lowercase.
    tipodepreciacion = models.CharField(db_column='TipoDepreciacion', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField(db_column='Estado', blank=True, null=True)  # Field name made lowercase.
    acumuladoant = models.DecimalField(db_column='AcumuladoAnt', max_digits=18, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    cerrado = models.BooleanField(db_column='Cerrado', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Tbl_AFHistoricoDepreciacion'


class TblAfmaestroactivofijo(models.Model):
    idactivofijo = models.AutoField(db_column='IdACtivoFijo', primary_key=True)  # Field name made lowercase.
    idfamilia = models.ForeignKey(TblAffamilia, models.DO_NOTHING, db_column='IdFamilia', blank=True, null=True)  # Field name made lowercase.
    idzona = models.IntegerField(db_column='idZona', blank=True, null=True)  # Field name made lowercase.
    nombre_corto = models.CharField(db_column='Nombre_corto', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nombre_largo = models.TextField(db_column='Nombre_largo', db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase. This field type is a guess.
    codigo_activoreal = models.CharField(db_column='Codigo_ActivoReal', max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    codigo_barrasactivo = models.CharField(db_column='Codigo_barrasActivo', max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    idestado = models.ForeignKey(TblAfestado, models.DO_NOTHING, db_column='IdEstado', blank=True, null=True)  # Field name made lowercase.
    fecha_ingreso = models.DateTimeField(db_column='Fecha_ingreso', blank=True, null=True)  # Field name made lowercase.
    idtipoingreso = models.ForeignKey('TblAftipoingreso', models.DO_NOTHING, db_column='IdTipoIngreso', blank=True, null=True)  # Field name made lowercase.
    idcentrocosto = models.IntegerField(db_column='IdCentroCosto', blank=True, null=True)  # Field name made lowercase.
    idubicacion = models.ForeignKey('TblAfubicacion', models.DO_NOTHING, db_column='IdUbicacion', blank=True, null=True)  # Field name made lowercase.
    idmarca = models.IntegerField(db_column='IdMarca', blank=True, null=True)  # Field name made lowercase.
    modelo = models.CharField(db_column='Modelo', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    serie = models.CharField(db_column='Serie', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    revalorizacion = models.IntegerField(blank=True, null=True)
    depreciable = models.IntegerField(db_column='Depreciable', blank=True, null=True)  # Field name made lowercase.
    idtipodepreciacion = models.ForeignKey('TblAftipodepreciacion', models.DO_NOTHING, db_column='IdTipoDepreciacion', blank=True, null=True)  # Field name made lowercase.
    unidadmedida = models.CharField(db_column='UnidadMedida', max_length=30, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    fecha_baja = models.DateTimeField(db_column='Fecha_Baja', blank=True, null=True)  # Field name made lowercase.
    idbaja = models.IntegerField(db_column='IdBaja', blank=True, null=True)  # Field name made lowercase.
    valor_residual = models.DecimalField(db_column='Valor_residual', max_digits=18, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    idtipoadquisicion = models.IntegerField(db_column='IdTipoAdquisicion', blank=True, null=True)  # Field name made lowercase.
    cuenta_compra = models.CharField(db_column='Cuenta_compra', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    cuenta_revalorizacion = models.CharField(db_column='Cuenta_Revalorizacion', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    cuenta_depreciacion = models.CharField(db_column='Cuenta_Depreciacion', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    cuenta_readecuaciones = models.CharField(db_column='Cuenta_Readecuaciones', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    tipo_situacion = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    fecha_compratributaria = models.DateTimeField(db_column='fecha_compraTributaria', blank=True, null=True)  # Field name made lowercase.
    tipo_documento = models.IntegerField(db_column='Tipo_documento', blank=True, null=True)  # Field name made lowercase.
    numero_documento = models.CharField(db_column='Numero_Documento', max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    ruc = models.CharField(db_column='Ruc', max_length=13, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    valor_compratributaria = models.DecimalField(db_column='Valor_CompraTributaria', max_digits=18, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    valor_comprafinanciera = models.DecimalField(db_column='Valor_CompraFinanciera', max_digits=18, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    vida_utiltributaria = models.IntegerField(db_column='Vida_UtilTributaria', blank=True, null=True)  # Field name made lowercase.
    vida_utilfinaciera = models.IntegerField(db_column='Vida_UtilFinaciera', blank=True, null=True)  # Field name made lowercase.
    mesanio_revalorizacion = models.DateTimeField(db_column='MesAnio_revalorizacion', blank=True, null=True)  # Field name made lowercase.
    mesanio_depreciacion = models.DateTimeField(db_column='MesAnio_Depreciacion', blank=True, null=True)  # Field name made lowercase.
    revalorizacion_acumulada = models.DecimalField(db_column='Revalorizacion_Acumulada', max_digits=18, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    depreciacion_acumulada = models.DecimalField(db_column='Depreciacion_Acumulada', max_digits=18, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    ficha_tecnica = models.TextField(db_column='Ficha_tecnica', db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase. This field type is a guess.
    nroautorizacion = models.CharField(db_column='NroAutorizacion', max_length=20, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    porcentadeprecia = models.DecimalField(db_column='PorcentaDeprecia', max_digits=6, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    idempresa = models.IntegerField(db_column='IdEmpresa', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField(blank=True, null=True)
    idrevaluacion = models.IntegerField(db_column='idRevaluacion', blank=True, null=True)  # Field name made lowercase.
    montorevaluacion = models.DecimalField(db_column='MontoRevaluacion', max_digits=18, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    vidarevaluacion = models.IntegerField(db_column='VidaRevaluacion', blank=True, null=True)  # Field name made lowercase.
    idcomponenteactivo = models.IntegerField(db_column='IdComponenteActivo', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Tbl_AFMaestroActivoFijo'


class TblAfmodificacion(models.Model):
    idmodificacion = models.AutoField(db_column='IdModificacion')  # Field name made lowercase.
    idactivofijo = models.ForeignKey(TblAfmaestroactivofijo, models.DO_NOTHING, db_column='IdActivoFijo', blank=True, null=True)  # Field name made lowercase.
    fecha = models.DateTimeField(db_column='Fecha', blank=True, null=True)  # Field name made lowercase.
    monto_invertido = models.DecimalField(db_column='Monto_Invertido', max_digits=18, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    monto_agregado = models.DecimalField(db_column='Monto_Agregado', max_digits=18, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    vida_utiltributaria = models.IntegerField(db_column='Vida_UTilTributaria', blank=True, null=True)  # Field name made lowercase.
    vida_utilfinanciera = models.IntegerField(db_column='Vida_UtilFinanciera', blank=True, null=True)  # Field name made lowercase.
    documento = models.CharField(db_column='Documento', max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    descripcion = models.CharField(db_column='Descripcion', max_length=250, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField(db_column='Estado', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Tbl_AFModificacion'


class TblAfproceso(models.Model):
    idproceso = models.AutoField(db_column='IdProceso', primary_key=True)  # Field name made lowercase.
    idactivofijo = models.ForeignKey(TblAfmaestroactivofijo, models.DO_NOTHING, db_column='IdActivoFijo', blank=True, null=True)  # Field name made lowercase.
    mesproceso = models.CharField(db_column='MesProceso', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    valorajustado = models.DecimalField(db_column='ValorAjustado', max_digits=18, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    valorhistorico = models.DecimalField(db_column='ValorHistorico', max_digits=18, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    depreciacioninicial = models.DecimalField(db_column='DepreciacionInicial', max_digits=18, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    depreciacionhistorica = models.DecimalField(db_column='DepreciacionHistorica', max_digits=18, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    depreciacionajustada = models.DecimalField(db_column='DepreciacionAjustada', max_digits=18, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    depreciacionmensual = models.DecimalField(db_column='DepreciacionMensual', max_digits=18, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    vidautilmesproceso = models.IntegerField(db_column='VidaUtilMesProceso', blank=True, null=True)  # Field name made lowercase.
    idempresa = models.IntegerField(db_column='IdEmpresa', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField(db_column='Estado', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Tbl_AFProceso'


class TblAfresponsable(models.Model):
    idresponsable = models.AutoField(db_column='IdResponsable', primary_key=True)  # Field name made lowercase.
    ndocidentidad = models.CharField(db_column='NDocIdentidad', max_length=12, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nombres = models.CharField(db_column='Nombres', max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    idcargo = models.ForeignKey(TblAfcargo, models.DO_NOTHING, db_column='IdCargo', blank=True, null=True)  # Field name made lowercase.
    grado = models.CharField(db_column='Grado', max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    idempresa = models.IntegerField(db_column='IdEmpresa', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField(db_column='Estado', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Tbl_AFResponsable'


class TblAftipoadquisicion(models.Model):
    idtipoadquisicion = models.AutoField(db_column='IdTipoAdquisicion', primary_key=True)  # Field name made lowercase.
    descripcion = models.CharField(db_column='Descripcion', max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField(db_column='Estado', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Tbl_AFTipoAdquisicion'


class TblAftipodepreciacion(models.Model):
    idtipodepreciacion = models.AutoField(db_column='IdTipoDepreciacion', primary_key=True)  # Field name made lowercase.
    descripcion = models.CharField(db_column='Descripcion', max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField(db_column='Estado', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Tbl_AFTipoDepreciacion'


class TblAftipoingreso(models.Model):
    idtipoingreso = models.AutoField(db_column='IdTipoIngreso', primary_key=True)  # Field name made lowercase.
    descripcion = models.CharField(db_column='Descripcion', max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField(db_column='Estado', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Tbl_AFTipoIngreso'


class TblAfubicacion(models.Model):
    idubicacion = models.AutoField(db_column='IdUbicacion', primary_key=True)  # Field name made lowercase.
    idresponsable = models.ForeignKey(TblAfresponsable, models.DO_NOTHING, db_column='IdResponsable', blank=True, null=True)  # Field name made lowercase.
    descripcion = models.CharField(db_column='Descripcion', max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    idempresa = models.IntegerField(db_column='IdEmpresa', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField(db_column='Estado', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Tbl_AFUbicacion'


class TblAfunidadmedida(models.Model):
    idunidadmedida = models.AutoField(db_column='IdUnidadMedida', primary_key=True)  # Field name made lowercase.
    descripcion = models.CharField(db_column='Descripcion', max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    abreviatura = models.CharField(db_column='Abreviatura', max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField(db_column='Estado', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Tbl_AFUnidadMedida'


class TblPptoClasificador(models.Model):
    idcodclasificador = models.AutoField(db_column='idCodClasificador')  # Field name made lowercase.
    codclasificador = models.CharField(db_column='Codclasificador', max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    descripcionclasif = models.CharField(db_column='DescripcionClasif', max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    anio = models.CharField(db_column='Anio', max_length=4, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField()

    class Meta:
        managed = False
        db_table = 'Tbl_Ppto_Clasificador'


class TblTipoEmpresa(models.Model):
    codigo_tipo_empresa = models.AutoField(db_column='Codigo_Tipo_Empresa')  # Field name made lowercase.
    descripcion = models.CharField(db_column='Descripcion', max_length=30, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField(db_column='Estado', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Tbl_Tipo_Empresa'


class Tipocambio(models.Model):
    idtipocambio = models.BigAutoField(db_column='IdTipoCambio', primary_key=True)  # Field name made lowercase.
    idmoneda = models.BigIntegerField(db_column='IdMoneda')  # Field name made lowercase.
    fecha = models.DateTimeField(db_column='Fecha')  # Field name made lowercase.
    tipocambiocompra = models.DecimalField(db_column='TipoCambioCompra', max_digits=10, decimal_places=3)  # Field name made lowercase.
    tipocambioventa = models.DecimalField(db_column='TipoCambioVenta', max_digits=10, decimal_places=3, blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField(db_column='Estado')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'TipoCambio'


class Tipoclienteproveedor(models.Model):
    idtipoclienteproveedor = models.AutoField(db_column='IdTipoClienteProveedor', primary_key=True)  # Field name made lowercase.
    tipoclienteproveedor = models.CharField(db_column='TipoClienteProveedor', max_length=20, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField(db_column='Estado', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'TipoClienteProveedor'


class Tipodocserienro(models.Model):
    codigodocumento = models.CharField(db_column='CodigoDocumento', max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    destipodocumento = models.CharField(db_column='DesTipoDocumento', max_length=60, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    descripcion = models.CharField(db_column='Descripcion', max_length=20, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    serie = models.CharField(db_column='Serie', max_length=3, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    numero = models.CharField(db_column='Numero', max_length=3, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'TipoDocSerieNro'


class Tipodocumento(models.Model):
    idtipodocumento = models.AutoField(db_column='idTipoDocumento', primary_key=True)  # Field name made lowercase.
    codigodocumento = models.CharField(db_column='CodigoDocumento', max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    destipodocumento = models.CharField(db_column='DesTipoDocumento', max_length=60, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    descripcion = models.CharField(db_column='Descripcion', max_length=20, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'TipoDocumento'


class Tipomovimientocontable(models.Model):
    idtipomovcontable = models.CharField(db_column='IdTipoMovContable', max_length=18, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    descripcion = models.CharField(db_column='Descripcion', max_length=18, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'TipoMovimientoContable'


class Tmptodos(models.Model):
    orden = models.IntegerField(blank=True, null=True)
    total = models.CharField(max_length=30, db_collation='Modern_Spanish_CI_AS')
    tipo = models.CharField(max_length=50, db_collation='Modern_Spanish_CI_AS')
    codcuenta = models.CharField(max_length=2, db_collation='Modern_Spanish_CI_AS')
    importe = models.DecimalField(max_digits=38, decimal_places=2, blank=True, null=True)
    porrenta = models.DecimalField(max_digits=12, decimal_places=6)

    class Meta:
        managed = False
        db_table = 'TmpTodos'


class UnidadEconomica(models.Model):
    idunidadeconomica = models.AutoField(db_column='IdUnidadEconomica', primary_key=True)  # Field name made lowercase.
    codunidadeconomica = models.CharField(db_column='CodUnidadEconomica', max_length=10, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    unidadeconomica = models.CharField(db_column='UnidadEconomica', max_length=100, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    descripcion = models.CharField(db_column='Descripcion', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    codzona = models.CharField(db_column='CodZona', max_length=6, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField(db_column='Estado', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Unidad_Economica'


class Usuarios(models.Model):
    idusuario = models.BigAutoField(db_column='idUsuario', primary_key=True)  # Field name made lowercase.
    username = models.CharField(db_column='Username', max_length=50, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    password = models.CharField(db_column='Password', max_length=50, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    nombres = models.CharField(db_column='Nombres', max_length=50, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    apellidos = models.CharField(db_column='Apellidos', max_length=50, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    imagen = models.BinaryField(db_column='Imagen', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Usuarios'


class Zona(models.Model):
    idzona = models.AutoField(db_column='IdZona', primary_key=True)  # Field name made lowercase.
    codzona = models.CharField(db_column='CodZona', max_length=6, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    zona = models.CharField(db_column='Zona', max_length=100, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    descripcion = models.CharField(db_column='Descripcion', max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField(db_column='Estado', blank=True, null=True)  # Field name made lowercase.
    idempresa = models.IntegerField(db_column='IdEmpresa', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Zona'


class Actividad(models.Model):
    clave = models.IntegerField(db_column='CLAVE', blank=True, null=True)  # Field name made lowercase.
    cod_uni = models.CharField(max_length=14, db_collation='Modern_Spanish_CI_AS')
    unidade = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS')
    codacti = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    partidas = models.CharField(max_length=20, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    grupo = models.CharField(max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    descrip = models.CharField(max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    ctipopre = models.CharField(max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    ctipoge = models.CharField(max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    careas = models.CharField(max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    anof = models.CharField(max_length=4, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'actividad'


class Exportaventasnew(models.Model):
    grupo = models.CharField(db_column='GRUPO', max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    zona = models.CharField(db_column='ZONA', max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    unidad_economica = models.CharField(db_column='UNIDAD_ECONOMICA', max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    a±o = models.FloatField(db_column='AÐO', blank=True, null=True)  # Field name made lowercase.
    mes = models.CharField(db_column='MES', max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    fecha_registro = models.DateTimeField(db_column='FECHA_REGISTRO', blank=True, null=True)  # Field name made lowercase.
    cuenta_contable = models.CharField(db_column='CUENTA_CONTABLE', max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    cuenta_abono = models.CharField(db_column='CUENTA_ABONO', max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    automatico = models.CharField(db_column='AUTOMATICO', max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    proveedor = models.CharField(db_column='PROVEEDOR', max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    razon_social = models.CharField(db_column='Razon_Social', max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    direccion = models.CharField(db_column='Direccion', max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    tipo_documento = models.CharField(db_column='TIPO_DOCUMENTO', max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nro_documento = models.CharField(db_column='NRO_DOCUMENTO', max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nro_documento2 = models.CharField(db_column='NRO_DOCUMENTO2', max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    fecha_documento = models.DateTimeField(db_column='FECHA_DOCUMENTO', blank=True, null=True)  # Field name made lowercase.
    detalle_venta = models.CharField(db_column='DETALLE_VENTA', max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    tipo_moneda = models.CharField(db_column='TIPO_MONEDA', max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    tipo_cambio = models.CharField(db_column='TIPO_CAMBIO', max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    tipo_operacion = models.FloatField(db_column='TIPO_OPERACION', blank=True, null=True)  # Field name made lowercase.
    importe_debe = models.FloatField(db_column='IMPORTE_DEBE', blank=True, null=True)  # Field name made lowercase.
    importe_haber = models.FloatField(db_column='IMPORTE_HABER', blank=True, null=True)  # Field name made lowercase.
    afecto = models.FloatField(db_column='AFECTO', blank=True, null=True)  # Field name made lowercase.
    monto_igv = models.FloatField(db_column='MONTO_IGV', blank=True, null=True)  # Field name made lowercase.
    isc = models.FloatField(db_column='ISC', blank=True, null=True)  # Field name made lowercase.
    monto_isc = models.FloatField(db_column='MONTO_ISC', blank=True, null=True)  # Field name made lowercase.
    cancelado = models.FloatField(db_column='CANCELADO', blank=True, null=True)  # Field name made lowercase.
    percepcion = models.FloatField(db_column='PERCEPCION', blank=True, null=True)  # Field name made lowercase.
    monto_percepcion = models.FloatField(db_column='MONTO_PERCEPCION', blank=True, null=True)  # Field name made lowercase.
    fechanc = models.CharField(max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    tipo_docnc = models.CharField(max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    nro_docnc = models.CharField(max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    voucher = models.FloatField(blank=True, null=True)
    glosa = models.CharField(max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    ccosto = models.CharField(max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    fefec = models.CharField(max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'exportaventasnew'


class Lediario(models.Model):
    orden = models.CharField(db_column='Orden', max_length=104, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nrodoc = models.CharField(db_column='NroDoc', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    idmovcontables_c = models.IntegerField(db_column='idMovcontables_C', blank=True, null=True)  # Field name made lowercase.
    idmovcontable_d = models.IntegerField(db_column='idMovcontable_d', blank=True, null=True)  # Field name made lowercase.
    correlativo = models.CharField(db_column='Correlativo', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    fechcontable = models.DateTimeField(db_column='FechContable', blank=True, null=True)  # Field name made lowercase.
    glosa = models.CharField(db_column='Glosa', max_length=250, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    zona = models.CharField(db_column='Zona', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    codmgc = models.CharField(db_column='codMgc', max_length=3, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    doc = models.CharField(db_column='Doc', max_length=44, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    codcuenta = models.CharField(db_column='codCuenta', max_length=12, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    descripcion = models.CharField(db_column='Descripcion', max_length=200, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    impdebe = models.DecimalField(db_column='impDebe', max_digits=15, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    imphaber = models.DecimalField(db_column='impHaber', max_digits=15, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    fechco = models.DateTimeField(db_column='Fechco', blank=True, null=True)  # Field name made lowercase.
    coddocref = models.CharField(db_column='CodDocRef', max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    serie = models.CharField(db_column='Serie', max_length=20, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nrodocref = models.CharField(db_column='NroDocRef', max_length=20, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    centrocosto = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    codclienteproveedor = models.CharField(db_column='CodClienteProveedor', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    ruc = models.CharField(db_column='Ruc', max_length=14, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'leDiario'


class Lemayor(models.Model):
    cuenta = models.CharField(db_column='Cuenta', max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    fechcontable = models.DateTimeField(blank=True, null=True)
    nrodoc = models.CharField(max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    glosa = models.CharField(max_length=250, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    debe = models.DecimalField(max_digits=38, decimal_places=2, blank=True, null=True)
    acreedor = models.DecimalField(max_digits=38, decimal_places=2, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'leMayor'


class Leventas(models.Model):
    zona = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    codunidadeconomica = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    mes = models.CharField(max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    correlativo = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    fechaemision = models.CharField(db_column='FechaEmision', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    fechavencimiento = models.CharField(db_column='FechaVencimiento', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    codigodocumento = models.CharField(db_column='CodigoDocumento', max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    serie = models.CharField(db_column='Serie', max_length=4, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    numero = models.CharField(db_column='Numero', max_length=19, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    tipodoc = models.CharField(db_column='TipoDoc', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    ruc = models.CharField(max_length=14, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    entidad = models.CharField(db_column='Entidad', max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    exportacion = models.DecimalField(db_column='Exportacion', max_digits=38, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    baseimponible = models.DecimalField(db_column='BaseImponible', max_digits=38, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    exonerado = models.DecimalField(db_column='Exonerado', max_digits=38, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    inafecta = models.DecimalField(db_column='Inafecta', max_digits=38, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    isc = models.DecimalField(db_column='ISC', max_digits=38, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    igv = models.DecimalField(db_column='IGV', max_digits=38, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    otrostributos = models.DecimalField(db_column='OtrosTributos', max_digits=38, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    montoicbper = models.DecimalField(db_column='MontoIcbper', max_digits=38, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    otroscptos = models.DecimalField(db_column='OtrosCptos', max_digits=38, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    total = models.DecimalField(db_column='Total', max_digits=38, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    tipocambio = models.DecimalField(db_column='TipoCambio', max_digits=7, decimal_places=3, blank=True, null=True)  # Field name made lowercase.
    fecha = models.CharField(db_column='Fecha', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    tipo = models.CharField(db_column='Tipo', max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    serie2 = models.CharField(db_column='Serie2', max_length=4, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    numero2 = models.CharField(db_column='Numero2', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    voucher = models.CharField(db_column='Voucher', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    baseimponibleiva = models.DecimalField(db_column='BaseImponibleIva', max_digits=38, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    impuestoiva = models.DecimalField(db_column='Impuestoiva', max_digits=38, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    nombredocumento = models.CharField(db_column='NombreDocumento', max_length=60, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nrodocumento = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'leVentas'


class Lecompras(models.Model):
    mes = models.CharField(max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    correlativo = models.CharField(max_length=9, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    fechadocreferencia = models.DateTimeField(db_column='FechaDocReferencia', blank=True, null=True)  # Field name made lowercase.
    fechavencimiento = models.CharField(db_column='FechaVencimiento', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    destipodocumento = models.CharField(db_column='DesTipoDocumento', max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    codaduana = models.CharField(db_column='CodAduana', max_length=3, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    aniodua = models.IntegerField(db_column='AnioDua', blank=True, null=True)  # Field name made lowercase.
    serie = models.CharField(max_length=14, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    nrodocreferencia = models.CharField(db_column='NroDocReferencia', max_length=14, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    codclienteproveedor = models.CharField(db_column='CodClienteProveedor', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    ruc = models.CharField(db_column='RUC', max_length=14, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    proveedor = models.CharField(db_column='Proveedor', max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    agdoge1 = models.DecimalField(db_column='AGDOGE1', max_digits=38, decimal_places=3, blank=True, null=True)  # Field name made lowercase.
    igv_1 = models.DecimalField(db_column='IGV_1', max_digits=38, decimal_places=3, blank=True, null=True)  # Field name made lowercase.
    agdoge_ng = models.DecimalField(db_column='AGDOGE_NG', max_digits=38, decimal_places=3, blank=True, null=True)  # Field name made lowercase.
    igv_2 = models.DecimalField(db_column='IGV_2', max_digits=38, decimal_places=3, blank=True, null=True)  # Field name made lowercase.
    agdo_ng = models.DecimalField(db_column='AGDO_NG', max_digits=38, decimal_places=3, blank=True, null=True)  # Field name made lowercase.
    igv_3 = models.DecimalField(db_column='IGV_3', max_digits=38, decimal_places=3, blank=True, null=True)  # Field name made lowercase.
    valor_adquisicion = models.DecimalField(db_column='Valor_Adquisicion', max_digits=38, decimal_places=3, blank=True, null=True)  # Field name made lowercase.
    isc = models.DecimalField(db_column='ISC', max_digits=38, decimal_places=3, blank=True, null=True)  # Field name made lowercase.
    montoicbper = models.DecimalField(db_column='MontoIcbper', max_digits=38, decimal_places=3, blank=True, null=True)  # Field name made lowercase.
    otroscptos = models.DecimalField(db_column='OtrosCptos', max_digits=38, decimal_places=3, blank=True, null=True)  # Field name made lowercase.
    totalimporte = models.DecimalField(db_column='TotalImporte', max_digits=38, decimal_places=3, blank=True, null=True)  # Field name made lowercase.
    porcentajepercepcion = models.DecimalField(db_column='PorcentajePercepcion', max_digits=38, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    nrodetrac = models.CharField(db_column='NroDetrac', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    fechadetrac = models.DateTimeField(db_column='fechaDetrac', blank=True, null=True)  # Field name made lowercase.
    tipocambio = models.DecimalField(db_column='Tipocambio', max_digits=7, decimal_places=3, blank=True, null=True)  # Field name made lowercase.
    fecha_refcomprobmodi = models.CharField(db_column='Fecha_RefComprobModi', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    tipo_refcomprobmodi = models.CharField(db_column='Tipo_RefComprobModi', max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    serie_refcomprobmodi = models.CharField(db_column='Serie_RefComprobModi', max_length=4, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nro_refcomprobmodi = models.CharField(db_column='Nro_RefComprobModi', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nombredocumento = models.CharField(db_column='NombreDocumento', max_length=60, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nrodocumento = models.CharField(db_column='NroDocumento', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    clasificabs = models.CharField(db_column='ClasificaBS', max_length=24, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'lecompras'


class Plancuentasmaestroold(models.Model):
    idplancuentascontables = models.BigAutoField(db_column='IdPlanCuentasContables')  # Field name made lowercase.
    codcuentacontable = models.CharField(db_column='CodCuentaContable', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    descripcion = models.CharField(db_column='Descripcion', max_length=80, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    ctadebe = models.CharField(db_column='CtaDebe', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    ctahaber = models.CharField(db_column='CtaHaber', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    ctacierre = models.CharField(db_column='CtaCierre', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    tipomovpccdb = models.CharField(db_column='TipoMovPCCDB', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nivelcuenta = models.CharField(db_column='NivelCuenta', max_length=1, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    tipocuenta = models.CharField(db_column='TipoCuenta', max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    tipoanalisis = models.CharField(db_column='TipoAnalisis', max_length=1, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    convermoneda = models.CharField(db_column='ConverMoneda', max_length=1, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    manejodocumentpendientes = models.CharField(db_column='ManejoDocumentPendientes', max_length=3, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    ajusteinflacion = models.CharField(db_column='AjusteInflacion', max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    validaautomatico = models.BooleanField(db_column='ValidaAutomatico', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField(db_column='Estado', blank=True, null=True)  # Field name made lowercase.
    idempresa = models.IntegerField(db_column='IdEmpresa', blank=True, null=True)  # Field name made lowercase.
    porcenta = models.IntegerField(db_column='Porcenta', blank=True, null=True)  # Field name made lowercase.
    ctadebe2 = models.CharField(db_column='Ctadebe2', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    porcenta2 = models.IntegerField(db_column='Porcenta2', blank=True, null=True)  # Field name made lowercase.
    ctadebe3 = models.CharField(db_column='CtaDebe3', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    porcenta3 = models.IntegerField(db_column='Porcenta3', blank=True, null=True)  # Field name made lowercase.
    ctadebe4 = models.CharField(db_column='CtaDebe4', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    porcenta4 = models.IntegerField(db_column='Porcenta4', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'plancuentasmaestroold'


class Prueba(models.Model):
    id_prueba = models.IntegerField(primary_key=True)
    ip = models.CharField(max_length=30, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    mac = models.CharField(max_length=20, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    fecha = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    hora_inicio = models.CharField(max_length=6, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    hora_final = models.CharField(max_length=6, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    acumulado = models.CharField(max_length=6, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    estado = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'prueba'


class Subactividad(models.Model):
    clave = models.IntegerField()
    cod_uni = models.CharField(max_length=14, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    unidade = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    codacti = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    ccod_suba = models.CharField(db_column='cCod_suba', max_length=12, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    grupo = models.CharField(max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    codigo = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    codpartida = models.CharField(max_length=20, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    descriparti = models.CharField(max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    area = models.CharField(max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    ctipopre = models.CharField(max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    ctipoge = models.CharField(max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    careas = models.CharField(max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    anof = models.CharField(max_length=4, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'subactividad'


class Tbldetseleccion(models.Model):
    ruc = models.CharField(max_length=14, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'tblDetSeleccion'


class TblAfcentrocosto(models.Model):
    idcentrocosto = models.AutoField(db_column='idCentroCosto', primary_key=True)  # Field name made lowercase.
    codcentrocosto = models.CharField(db_column='CodCentroCosto', max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    descripcion = models.CharField(db_column='Descripcion', max_length=60, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    ctadestino = models.CharField(db_column='CtaDestino', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    ctadebe = models.CharField(db_column='CtaDebe', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    ctahaber = models.CharField(db_column='CtaHaber', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nivel = models.CharField(db_column='Nivel', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField(db_column='Estado', blank=True, null=True)  # Field name made lowercase.
    idempresa = models.IntegerField(db_column='idEmpresa', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tbl_AFCentroCosto'


class TblAfdocumentoCompra(models.Model):
    codigo_documento_compra = models.BigAutoField(db_column='Codigo_Documento_Compra')  # Field name made lowercase.
    descripcion = models.CharField(db_column='Descripcion', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    abreviatura = models.CharField(db_column='Abreviatura', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    serie = models.CharField(db_column='Serie', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    correlativo = models.CharField(db_column='Correlativo', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'tbl_AFDocumento_Compra'


class TblAfmarca(models.Model):
    idmarca = models.AutoField(db_column='IdMarca', primary_key=True)  # Field name made lowercase.
    descripcion = models.CharField(max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    estado = models.BooleanField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'tbl_AFMarca'


class TblAfreubicacion(models.Model):
    idreubicacion = models.AutoField(db_column='IdReubicacion')  # Field name made lowercase.
    idactivofijo = models.ForeignKey(TblAfmaestroactivofijo, models.DO_NOTHING, db_column='IdActivoFijo', blank=True, null=True)  # Field name made lowercase.
    fecha_reubicacion = models.DateTimeField(db_column='Fecha_Reubicacion', blank=True, null=True)  # Field name made lowercase.
    descripcion = models.CharField(db_column='Descripcion', max_length=250, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    idubicacion = models.IntegerField(db_column='IdUbicacion', blank=True, null=True)  # Field name made lowercase.
    idcentrocosto = models.IntegerField(db_column='IdCentroCosto', blank=True, null=True)  # Field name made lowercase.
    estado = models.IntegerField(db_column='Estado', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tbl_AFReUbicacion'


class TblAfsede(models.Model):
    idzona = models.AutoField(db_column='IdZona')  # Field name made lowercase.
    codzona = models.CharField(db_column='CodZona', max_length=6, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    zona = models.CharField(db_column='Zona', max_length=50, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    descripcion = models.CharField(db_column='Descripcion', max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField(db_column='Estado', blank=True, null=True)  # Field name made lowercase.
    idempresa = models.IntegerField(db_column='IdEmpresa', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tbl_AFSede'


class TblAftiporeadecuacion(models.Model):
    idtiporeadecuacion = models.AutoField(db_column='idTipoReadecuacion')  # Field name made lowercase.
    descripcion = models.CharField(db_column='Descripcion', max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField(db_column='Estado', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tbl_AFTipoReadecuacion'


class TblActividadoper(models.Model):
    idarea = models.IntegerField(db_column='IdArea')  # Field name made lowercase.
    area = models.CharField(db_column='Area', max_length=16, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    tipoact = models.CharField(db_column='TipoAct', max_length=4, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    codact = models.CharField(db_column='CodAct', max_length=7, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    descripcion = models.CharField(db_column='Descripcion', max_length=248, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    ctadebe = models.CharField(db_column='CtaDebe', max_length=12, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    ctahaber = models.CharField(db_column='CtaHaber', max_length=12, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    estado = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'tbl_ActividadOper'


class TblActivo(models.Model):
    idactivo = models.BigAutoField(db_column='IdActivo')  # Field name made lowercase.
    caso1 = models.CharField(db_column='Caso1', max_length=30, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    caso2 = models.CharField(db_column='Caso2', max_length=30, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    caso3 = models.CharField(db_column='Caso3', max_length=40, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    caso4 = models.CharField(db_column='Caso4', max_length=25, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    caso5 = models.CharField(db_column='Caso5', max_length=25, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    caso6 = models.CharField(db_column='Caso6', max_length=30, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    pc = models.CharField(db_column='PC', max_length=30, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    actividad = models.BigIntegerField(db_column='Actividad', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField(db_column='Estado', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tbl_Activo'


class TblAduanas(models.Model):
    codaduanas = models.CharField(db_column='CodAduanas', primary_key=True, max_length=3, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    aduanas = models.CharField(db_column='Aduanas', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tbl_Aduanas'


class TblAsignempresaEmpleado(models.Model):
    ccodempleado = models.CharField(db_column='cCodEmpleado', max_length=10, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    idempresa = models.IntegerField(db_column='IdEmpresa')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tbl_AsignEmpresa_Empleado'


class TblBcConcepto(models.Model):
    bc_codigoconcepto = models.CharField(db_column='BC_CodigoConcepto', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    bc_concepto = models.CharField(db_column='BC_Concepto', max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tbl_BC_Concepto'


class TblBcDetalleconcepto(models.Model):
    bc_codconcepto = models.CharField(db_column='BC_CodConcepto', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    item = models.CharField(db_column='Item', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    debe = models.CharField(db_column='Debe', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    haber = models.CharField(db_column='Haber', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    formula = models.CharField(max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    variable = models.CharField(db_column='Variable', max_length=2, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    estado = models.CharField(db_column='Estado', max_length=1, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tbl_BC_DetalleConcepto'


class TblCapcomercial(models.Model):
    cap = models.CharField(max_length=3, db_collation='Modern_Spanish_CI_AS')
    ruc = models.CharField(db_column='RUC', max_length=11, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    razonsocial = models.CharField(db_column='RazonSocial', max_length=41, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tbl_CAPComercial'


class TblCapcptocomercial(models.Model):
    codigo_capcpto = models.AutoField(db_column='Codigo_CapCpto')  # Field name made lowercase.
    codigo = models.CharField(db_column='Codigo', max_length=3, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    ruc_cpto = models.CharField(db_column='RUC_Cpto', max_length=11, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    descripcion = models.CharField(db_column='Descripcion', max_length=41, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    tipo = models.CharField(db_column='Tipo', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField(db_column='Estado', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tbl_CAPCptoComercial'


class TblCeaconex(models.Model):
    spid = models.IntegerField(db_column='SPID', primary_key=True)  # Field name made lowercase.
    status = models.CharField(db_column='Status', max_length=30, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    login = models.CharField(db_column='Login', max_length=128, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    hostname = models.CharField(db_column='HostName', max_length=128, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    blkby = models.CharField(db_column='BlkBy', max_length=5, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    dbname = models.CharField(db_column='DBName', max_length=128, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    command = models.CharField(db_column='Command', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    cputime = models.IntegerField(db_column='CPUTime', blank=True, null=True)  # Field name made lowercase.
    diskio = models.IntegerField(db_column='DiskIO', blank=True, null=True)  # Field name made lowercase.
    lastbatch = models.CharField(db_column='LastBatch', max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    programaname = models.CharField(db_column='ProgramaName', max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    spid2 = models.SmallIntegerField(db_column='SPID2', blank=True, null=True)  # Field name made lowercase.
    requestid = models.IntegerField(db_column='REQUESTID', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tbl_CeaConex'


class TblClientedireccion(models.Model):
    codigo_clientedireccion = models.AutoField(db_column='Codigo_ClienteDireccion')  # Field name made lowercase.
    idclienteproveedor = models.ForeignKey('TblMstoClienteproveedor', models.DO_NOTHING, db_column='idClienteproveedor', blank=True, null=True)  # Field name made lowercase.
    direccion = models.CharField(db_column='Direccion', max_length=90, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'tbl_ClienteDireccion'


class TblCtrlAoproceso(models.Model):
    iidcaba±oproceso = models.AutoField(db_column='iIdCabA±oProceso', primary_key=True)  # Field name made lowercase.
    ca±oproceso = models.CharField(db_column='cA±oProceso', max_length=4, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    codzona = models.CharField(db_column='CodZona', max_length=6, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    codunidad = models.CharField(db_column='CodUnidad', max_length=50, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tbl_Ctrl_A±oProceso'


class TblDetraccion(models.Model):
    codigodetraccion = models.CharField(db_column='CodigoDetraccion', primary_key=True, max_length=7, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    categoria = models.CharField(db_column='Categoria', max_length=500, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    tipobienservicio = models.CharField(db_column='TipoBienServicio', max_length=150, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    operacionesexceptuadas = models.CharField(db_column='OperacionesExceptuadas', max_length=500, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    porcent = models.DecimalField(db_column='Porcent', max_digits=10, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    tipo = models.IntegerField(db_column='Tipo', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tbl_Detraccion'


class TblFlujoefectivo(models.Model):
    idflujoefectivo = models.AutoField(db_column='idFlujoEfectivo', primary_key=True)  # Field name made lowercase.
    codigoflujoefectivo = models.CharField(db_column='CodigoFlujoEfectivo', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    descripcion = models.CharField(db_column='Descripcion', max_length=320, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    abreviatura = models.CharField(max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    formula = models.CharField(max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    codigosbs = models.CharField(db_column='codigoSbs', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    codigoorden = models.CharField(db_column='CodigoOrden', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    orden = models.CharField(db_column='Orden', max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    estado = models.CharField(db_column='Estado', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    cuenta = models.CharField(db_column='Cuenta', max_length=160, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    cuenta2 = models.CharField(db_column='Cuenta2', max_length=80, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tbl_FlujoEfectivo'


class TblLibroelectronico(models.Model):
    libro = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    codlibro = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    tabla = models.CharField(max_length=20, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    diaimprime = models.CharField(db_column='DiaImprime', max_length=2, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    detalle = models.CharField(max_length=1500, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'tbl_LibroElectronico'


class TblLibros(models.Model):
    idcodigo = models.AutoField(db_column='idCodigo', primary_key=True)  # Field name made lowercase.
    codigo = models.CharField(db_column='Codigo', max_length=3, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    namelibro = models.CharField(db_column='NameLibro', max_length=150, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField(db_column='Estado', blank=True, null=True)  # Field name made lowercase.
    codmgc = models.CharField(db_column='codMGC', max_length=50, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tbl_Libros'


class TblMaestroestadosintegrales(models.Model):
    idestadosintegrales = models.AutoField(db_column='idEstadosIntegrales')  # Field name made lowercase.
    orden = models.IntegerField()
    rpt = models.CharField(max_length=11, db_collation='Modern_Spanish_CI_AS')
    tipo = models.CharField(max_length=30, db_collation='Modern_Spanish_CI_AS')
    cpto = models.CharField(max_length=50, db_collation='Modern_Spanish_CI_AS')
    cta = models.CharField(max_length=2, db_collation='Modern_Spanish_CI_AS')
    formula = models.CharField(max_length=60, db_collation='Modern_Spanish_CI_AS')
    ctagral = models.CharField(max_length=2, db_collation='Modern_Spanish_CI_AS')
    multiplica = models.IntegerField()
    estado = models.BooleanField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'tbl_MaestroEstadosIntegrales'


class TblMovimientocajac(models.Model):
    idmovimientocajac = models.AutoField(db_column='idMovimientoCajaC', primary_key=True)  # Field name made lowercase.
    anio = models.CharField(max_length=4, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    mes = models.CharField(max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    zona = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    codunidadeconomica = models.CharField(db_column='codUnidadEconomica', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nrodoc = models.CharField(db_column='NroDoc', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    fechacontable = models.DateTimeField(db_column='FechaContable', blank=True, null=True)  # Field name made lowercase.
    codmgc = models.CharField(db_column='codMGC', max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    glosa = models.CharField(db_column='Glosa', max_length=200, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    rucemitido = models.CharField(db_column='RucEmitido', max_length=11, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    codigoctabancaria = models.CharField(db_column='CodigoCtaBancaria', max_length=12, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    codigotipodocpago = models.CharField(db_column='CodigoTipoDocPago', max_length=4, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nrodocpago = models.CharField(db_column='NroDocPago', max_length=14, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    monto = models.DecimalField(db_column='Monto', max_digits=18, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    transferido = models.CharField(max_length=20, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    correlativo = models.CharField(db_column='Correlativo', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    estado = models.CharField(db_column='Estado', max_length=1, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    transferidoant = models.CharField(db_column='TransferidoAnt', max_length=20, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tbl_MovimientoCajaC'


class TblMovimientocajad(models.Model):
    idmovimientocajad = models.AutoField(db_column='idMovimientoCajaD')  # Field name made lowercase.
    idmovimientocajac = models.ForeignKey(TblMovimientocajac, models.DO_NOTHING, db_column='idMovimientoCajaC', blank=True, null=True)  # Field name made lowercase.
    codunidadeconomica = models.CharField(db_column='CodunidadEconomica', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nrodocumento = models.CharField(db_column='NroDocumento', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    fechacontable = models.DateTimeField(db_column='FechaContable', blank=True, null=True)  # Field name made lowercase.
    tipomediopago = models.CharField(db_column='TipoMedioPago', max_length=3, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    codpro = models.CharField(max_length=14, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    glosa = models.CharField(db_column='Glosa', max_length=250, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    flujoefectivo = models.CharField(db_column='FlujoEfectivo', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    codigodocumentofuente = models.CharField(db_column='CodigoDocumentoFuente', max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nrodocumentofuente = models.CharField(db_column='NroDocumentoFuente', max_length=14, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    fechadocfuente = models.DateTimeField(db_column='FechaDocFuente', blank=True, null=True)  # Field name made lowercase.
    fechavencimiento = models.DateTimeField(db_column='FechaVencimiento', blank=True, null=True)  # Field name made lowercase.
    codigoctabancaria = models.CharField(db_column='CodigoCtaBancaria', max_length=12, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    codcuenta = models.CharField(db_column='CodCuenta', max_length=12, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    impdebe = models.DecimalField(db_column='impDebe', max_digits=18, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    imphaber = models.DecimalField(db_column='impHaber', max_digits=18, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    nrooperacion = models.CharField(db_column='NroOperacion', max_length=40, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nrocheque = models.CharField(db_column='NroCheque', max_length=40, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    estado = models.CharField(max_length=1, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    reparo = models.CharField(max_length=1, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    tipodoc = models.CharField(db_column='TipoDoc', max_length=3, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    tipooper = models.IntegerField(db_column='TipoOper', blank=True, null=True)  # Field name made lowercase.
    montoigv = models.DecimalField(db_column='MontoIGV', max_digits=12, decimal_places=3, blank=True, null=True)  # Field name made lowercase.
    montoisc = models.DecimalField(db_column='MontoISC', max_digits=10, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    montoretencion4 = models.DecimalField(db_column='MontoRetencion4', max_digits=10, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    rigv = models.BooleanField(db_column='RIgv', blank=True, null=True)  # Field name made lowercase.
    afecto = models.BooleanField(db_column='Afecto', blank=True, null=True)  # Field name made lowercase.
    costearigv = models.CharField(db_column='CostearIgv', max_length=1, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    direccion = models.CharField(db_column='Direccion', max_length=90, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tbl_MovimientoCajaD'


class TblParametrosaux(models.Model):
    idparametrosaux = models.BigAutoField(db_column='idParametrosAux', primary_key=True)  # Field name made lowercase.
    orden = models.IntegerField(blank=True, null=True)
    descripcion = models.CharField(max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    monto = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    ctadebe = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    ctahaber = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    idempresa = models.BigIntegerField(blank=True, null=True)
    estado = models.BooleanField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'tbl_ParametrosAux'


class TblPptoActoper(models.Model):
    idcodactoper = models.AutoField(db_column='idCodActOper', primary_key=True)  # Field name made lowercase.
    codigoactoper = models.CharField(db_column='CodigoActOper', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    detalleactividad = models.CharField(db_column='DetalleActividad', max_length=150, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    codobjetivo = models.CharField(db_column='CodObjetivo', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    idcodobjetivo = models.ForeignKey('TblPptoObjetivo', models.DO_NOTHING, db_column='idcodObjetivo')  # Field name made lowercase.
    codunidad = models.CharField(db_column='Codunidad', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    unidad = models.CharField(db_column='Unidad', max_length=25, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField()
    anio = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'tbl_Ppto_ActOper'


class TblPptoCabCn(models.Model):
    idcabcn = models.AutoField(db_column='idCabCN', primary_key=True)  # Field name made lowercase.
    idcodactoper = models.ForeignKey(TblPptoActoper, models.DO_NOTHING, db_column='idCodActOper')  # Field name made lowercase.
    anio = models.CharField(max_length=4, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    codigo_act_oper = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    actividad = models.CharField(max_length=3, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    orden = models.CharField(max_length=3, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    codactorden = models.CharField(db_column='CodActOrden', max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    principal = models.CharField(db_column='Principal', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    codigo_actividad = models.IntegerField(blank=True, null=True)
    detalleactividad = models.CharField(db_column='detalleActividad', max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    clasifica_gasto = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS')
    codunidad = models.IntegerField()
    undprincipal = models.CharField(max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    costo_uni = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    can_ene = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    can_feb = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    can_mar = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    can_abr = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    can_may = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    can_jun = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    can_jul = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    can_ago = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    can_set = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    can_oct = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    can_nov = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    can_dic = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    can_tot = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    cost_ene = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    cost_feb = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    cost_mar = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    cost_abr = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    cost_may = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    cost_jun = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    cost_jul = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    cost_ago = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    cost_set = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    cost_oct = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    cost_nov = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    cost_dic = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    cost_total = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    idempresa = models.IntegerField(db_column='IdEmpresa')  # Field name made lowercase.
    estado = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'tbl_Ppto_Cab_CN'


class TblPptoCertificado(models.Model):
    idcertificado = models.AutoField(db_column='idCertificado')  # Field name made lowercase.
    nrocertificado = models.CharField(db_column='NroCertificado', max_length=20, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    codigo_pedido = models.CharField(db_column='Codigo_Pedido', max_length=10, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    nroorden = models.CharField(db_column='NroOrden', max_length=30, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nrofur = models.CharField(db_column='NroFur', max_length=30, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    ffinancia = models.CharField(db_column='FFinancia', max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    programa = models.CharField(db_column='Programa', max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    actividad = models.CharField(db_column='Actividad', max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    monto = models.DecimalField(max_digits=18, decimal_places=2, blank=True, null=True)
    fecha_certi = models.DateTimeField(blank=True, null=True)
    idtrabajadorsoli = models.IntegerField(db_column='idTrabajadorSoli', blank=True, null=True)  # Field name made lowercase.
    estado = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'tbl_Ppto_Certificado'


class TblPptoDetCn(models.Model):
    iddetcn = models.AutoField(db_column='idDetCN')  # Field name made lowercase.
    idcabcn = models.ForeignKey(TblPptoCabCn, models.DO_NOTHING, db_column='idCabCN')  # Field name made lowercase.
    anio = models.CharField(max_length=4, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    codigo_act_oper = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    actividad = models.CharField(max_length=3, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    orden = models.CharField(max_length=3, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    codactorden = models.CharField(db_column='CodActOrden', max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    principal = models.CharField(db_column='Principal', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    codigo_actividad = models.IntegerField(blank=True, null=True)
    detalleactividad = models.CharField(db_column='detalleActividad', max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    clasifica_gasto = models.CharField(max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    codunidad = models.ForeignKey('TblPptoUnidad', models.DO_NOTHING, db_column='codunidad', blank=True, null=True)
    undprincipal = models.CharField(max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    costo_uni = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    can_ene = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    can_feb = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    can_mar = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    can_abr = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    can_may = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    can_jun = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    can_jul = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    can_ago = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    can_set = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    can_oct = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    can_nov = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    can_dic = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    can_tot = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    cost_ene = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    cost_feb = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    cost_mar = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    cost_abr = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    cost_may = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    cost_jun = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    cost_jul = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    cost_ago = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    cost_set = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    cost_oct = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    cost_nov = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    cost_dic = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    cost_total = models.DecimalField(max_digits=18, decimal_places=4, blank=True, null=True)
    idempresa = models.IntegerField(db_column='IdEmpresa')  # Field name made lowercase.
    estado = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'tbl_Ppto_Det_CN'


class TblPptoGerenciaarea(models.Model):
    idcodgerencia = models.AutoField(db_column='idCodGerencia', primary_key=True)  # Field name made lowercase.
    codigogerencia = models.CharField(db_column='codigoGerencia', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    detallegerenciaunidad = models.CharField(db_column='DetalleGerenciaUnidad', max_length=70, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    codigogerenciaxarea = models.CharField(db_column='CodigoGerenciaxArea', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    objetivoestrategico = models.CharField(db_column='ObjetivoEstrategico', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    detalleobjetivogral = models.CharField(db_column='DetalleObjetivoGral', max_length=70, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    siglas = models.CharField(db_column='Siglas', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    correl = models.IntegerField(db_column='Correl', blank=True, null=True)  # Field name made lowercase.
    idempresa = models.IntegerField(db_column='IdEmpresa', blank=True, null=True)  # Field name made lowercase.
    programa = models.CharField(max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    actividad = models.CharField(max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    estado = models.BooleanField()

    class Meta:
        managed = False
        db_table = 'tbl_Ppto_GerenciaArea'


class TblPptoObjetivo(models.Model):
    idcodobjetivo = models.AutoField(db_column='idCodObjetivo', primary_key=True)  # Field name made lowercase.
    codigoobjetivo = models.CharField(db_column='CodigoObjetivo', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    detalleobjetivo = models.CharField(db_column='DetalleObjetivo', max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    idcodgerencia = models.ForeignKey(TblPptoGerenciaarea, models.DO_NOTHING, db_column='idcodGerencia')  # Field name made lowercase.
    estado = models.BooleanField()
    anio = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'tbl_Ppto_Objetivo'


class TblPptoTrabajador(models.Model):
    idcodtrabajador = models.AutoField(db_column='idCodTrabajador', primary_key=True)  # Field name made lowercase.
    dni = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    nombre = models.CharField(db_column='Nombre', max_length=80, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    condicion = models.CharField(max_length=20, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    cargo = models.CharField(max_length=60, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    ccosto = models.CharField(db_column='Ccosto', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    clasif = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    act = models.CharField(db_column='Act', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    actoper = models.CharField(db_column='ActOper', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    situacion = models.CharField(db_column='Situacion', max_length=1, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    idempresa = models.IntegerField(db_column='IdEmpresa', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField()

    class Meta:
        managed = False
        db_table = 'tbl_Ppto_Trabajador'


class TblPptoUnidad(models.Model):
    codigo_unidad = models.AutoField(db_column='Codigo_Unidad', primary_key=True)  # Field name made lowercase.
    descripcion = models.CharField(db_column='Descripcion', max_length=40, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    abreviatura = models.CharField(db_column='Abreviatura', max_length=20, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    valor = models.FloatField(blank=True, null=True)
    estado = models.BooleanField(blank=True, null=True)
    codigo_sunat = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'tbl_Ppto_Unidad'


class TblSunatsegmento(models.Model):
    codigosegmento = models.CharField(db_column='codigoSegmento', max_length=2, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    descripcion = models.CharField(max_length=119, db_collation='Modern_Spanish_CI_AS')

    class Meta:
        managed = False
        db_table = 'tbl_SunatSegmento'


class TblTipodocumentoidentidad(models.Model):
    codtipodocumentoidentidad = models.CharField(db_column='CodTipoDocumentoIdentidad', primary_key=True, max_length=1, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    tipodocumentoidentidad = models.CharField(db_column='TipoDocumentoIdentidad', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tbl_TipoDocumentoIdentidad'


class TblTipoexistencia(models.Model):
    codtipoexistencia = models.CharField(db_column='CodTipoExistencia', primary_key=True, max_length=2, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    tipoexistencia = models.CharField(db_column='TipoExistencia', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tbl_TipoExistencia'


class TblTipointangible(models.Model):
    codtipointangible = models.CharField(db_column='CodTipoIntangible', primary_key=True, max_length=2, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    tipointangible = models.CharField(db_column='TipoIntangible', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField(db_column='Estado', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tbl_TipoIntangible'


class TblTipooperacion(models.Model):
    codtipooperacion = models.CharField(db_column='CodTipoOperacion', primary_key=True, max_length=2, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    tipooperacion = models.CharField(db_column='TipoOperacion', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField(db_column='Estado', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tbl_TipoOperacion'


class TblTipounidadmedida(models.Model):
    codunidadmedidad = models.CharField(db_column='CodUnidadMedidad', primary_key=True, max_length=2, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    unidadmedida = models.CharField(db_column='UnidadMedida', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField(db_column='Estado', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tbl_TipoUnidadMedida'


class TblTipoMedioPago(models.Model):
    codtipomediopago = models.CharField(db_column='CodTipoMedioPago', primary_key=True, max_length=3, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    tipomediopago = models.CharField(db_column='TipoMedioPago', max_length=200, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField(db_column='Estado', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tbl_Tipo_Medio_Pago'


class TblUtilidadimpuesto(models.Model):
    idutilidadimpuesto = models.AutoField(db_column='idUtilidadImpuesto')  # Field name made lowercase.
    codzona = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    codunidad = models.CharField(db_column='codUnidad', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    mes1 = models.CharField(db_column='Mes1', max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    mes2 = models.CharField(db_column='Mes2', max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    anio = models.CharField(db_column='Anio', max_length=4, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    utilidadcontable = models.DecimalField(db_column='UtilidadContable', max_digits=18, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    reparo = models.DecimalField(db_column='Reparo', max_digits=18, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    porparticipa = models.CharField(db_column='PorParticipa', max_length=3, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    montoparticipa = models.DecimalField(db_column='MontoParticipa', max_digits=18, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    porrenta = models.CharField(db_column='PorRenta', max_length=3, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    montorenta = models.DecimalField(db_column='MontoRenta', max_digits=18, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    totalrenta = models.DecimalField(db_column='TotalRenta', max_digits=18, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    totaluneta = models.DecimalField(db_column='TotalUNeta', max_digits=18, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    totalutilidad = models.DecimalField(db_column='TotalUtilidad', max_digits=18, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField(db_column='Estado', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tbl_UtilidadImpuesto'


class TblCtrlGrupos(models.Model):
    ccodusuario = models.CharField(db_column='cCodUsuario', max_length=6, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    ccodtipaux = models.CharField(db_column='cCodTipAux', max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    bestado = models.BooleanField(db_column='bEstado', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tbl_ctrl_Grupos'


class TblDetalleparametrosaux(models.Model):
    iddetalleparametrosaux = models.BigAutoField(db_column='idDetalleParametrosAux', primary_key=True)  # Field name made lowercase.
    idparametrosaux = models.BigIntegerField(db_column='idParametrosAux', blank=True, null=True)  # Field name made lowercase.
    anomes = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    monto = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    estado = models.BooleanField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'tbl_detalleParametrosAux'


class TblEmpresa(models.Model):
    codigo_empresa = models.BigAutoField(db_column='codigo_Empresa')  # Field name made lowercase.
    razon_social = models.CharField(db_column='Razon_Social', max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    ruc = models.CharField(db_column='RUC', max_length=11, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    direccion = models.CharField(db_column='Direccion', max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    telefono1 = models.CharField(db_column='Telefono1', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    telefono2 = models.CharField(db_column='Telefono2', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    telefono3 = models.CharField(db_column='Telefono3', max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    representante_legal = models.CharField(db_column='Representante_Legal', max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField(blank=True, null=True)
    codigo_tipo_empresa = models.IntegerField(db_column='Codigo_tipo_empresa', blank=True, null=True)  # Field name made lowercase.
    ubigeo = models.CharField(db_column='Ubigeo', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    departamento = models.CharField(db_column='Departamento', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    provincia = models.CharField(db_column='Provincia', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    distrito = models.CharField(db_column='Distrito', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    region = models.CharField(db_column='Region', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    tipo = models.CharField(db_column='Tipo', max_length=20, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    faltacert = models.DateTimeField(db_column='FAltaCert', blank=True, null=True)  # Field name made lowercase.
    fbajacert = models.DateTimeField(db_column='FBajaCert', blank=True, null=True)  # Field name made lowercase.
    licencia = models.CharField(db_column='Licencia', max_length=500, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    fechafin = models.DateTimeField(db_column='FechaFin', blank=True, null=True)  # Field name made lowercase.
    nombbackup = models.CharField(db_column='NombBackUp', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    rutabackup = models.CharField(db_column='RutaBackUp', max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tbl_empresa'


class TblMstGasto(models.Model):
    codigo_documento_gasto = models.AutoField(db_column='Codigo_Documento_Gasto', primary_key=True)  # Field name made lowercase.
    descripcion = models.CharField(db_column='Descripcion', max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    cuenta_contable = models.CharField(db_column='Cuenta_contable', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    cuenta_contableh = models.CharField(db_column='Cuenta_ContableH', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    resumenautomatico = models.IntegerField(db_column='ResumenAutomatico', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField(db_column='Estado', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tbl_mst_gasto'


class TblMstoClienteproveedor(models.Model):
    idclienteproveedor = models.AutoField(db_column='IdClienteProveedor', primary_key=True)  # Field name made lowercase.
    codclienteproveedor = models.CharField(db_column='CodClienteProveedor', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    razonsocial = models.CharField(db_column='RazonSocial', max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    ruc = models.CharField(db_column='RUC', max_length=14, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nombre = models.CharField(db_column='Nombre', max_length=30, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    apellido = models.CharField(db_column='Apellido', max_length=30, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    telefono = models.CharField(db_column='Telefono', max_length=11, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    idtipoclienteproveedor = models.IntegerField(db_column='IdTipoClienteProveedor', blank=True, null=True)  # Field name made lowercase.
    direccion = models.CharField(db_column='Direccion', max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    codzona = models.CharField(db_column='CodZona', max_length=6, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    cobrador = models.CharField(db_column='Cobrador', max_length=90, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    correo = models.CharField(db_column='Correo', max_length=60, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    paginaweb = models.CharField(db_column='PaginaWeb', max_length=70, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    reprelegal = models.CharField(db_column='RepreLegal', max_length=60, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    codaval = models.CharField(db_column='CodAval', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    aval = models.CharField(db_column='Aval', max_length=60, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    direccionaval = models.CharField(db_column='DireccionAval', max_length=60, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    telefonoaval = models.CharField(db_column='TelefonoAval', max_length=11, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField(db_column='Estado', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tbl_msto_ClienteProveedor'


class TblMstoCrp(models.Model):
    iidcrp = models.IntegerField(db_column='iIdCrp')  # Field name made lowercase.
    ccodcrp = models.CharField(db_column='cCodCrp', max_length=14, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    vdescrp = models.CharField(db_column='vDesCrp', max_length=255, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tbl_msto_Crp'


class TblMstoPersonal(models.Model):
    iidempleado = models.IntegerField(db_column='iIdEmpleado')  # Field name made lowercase.
    ccodempleado = models.CharField(db_column='cCodEmpleado', max_length=10, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    vprinombre = models.CharField(db_column='vPriNombre', max_length=100, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    vpriapellido = models.CharField(db_column='vPriApellido', max_length=100, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    vsegapellido = models.CharField(db_column='vSegApellido', max_length=100, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    ccodunidadeconomica = models.CharField(db_column='cCodUnidadEconomica', max_length=14, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    ccoddepartamento = models.CharField(db_column='cCodDepartamento', max_length=14, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    ccodcrp = models.CharField(db_column='cCodCrp', max_length=14, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    clogusuario = models.CharField(db_column='cLogUsuario', max_length=20, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    cpasusuario = models.CharField(db_column='cPasUsuario', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tbl_msto_Personal'


class TblMstoAccionistas(models.Model):
    idaccionista = models.AutoField(db_column='IdAccionista')  # Field name made lowercase.
    codaccionista = models.CharField(db_column='CodAccionista', max_length=6, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    accionista = models.CharField(db_column='Accionista', max_length=50, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    descripcion = models.CharField(db_column='Descripcion', max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField(db_column='Estado', blank=True, null=True)  # Field name made lowercase.
    idempresa = models.IntegerField(db_column='IdEmpresa', blank=True, null=True)  # Field name made lowercase.
    documento = models.CharField(max_length=11, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    valoraccion = models.IntegerField(db_column='valorAccion', blank=True, null=True)  # Field name made lowercase.
    nroaccion = models.FloatField(db_column='nroAccion', blank=True, null=True)  # Field name made lowercase.
    porcentajeparticipacion = models.FloatField(db_column='PorcentajeParticipacion', blank=True, null=True)  # Field name made lowercase.
    anio = models.CharField(max_length=4, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    mes = models.CharField(max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'tbl_msto_accionistas'


class TblSunatclase(models.Model):
    codigoclase = models.CharField(db_column='codigoClase', max_length=6, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    codigofamilia = models.CharField(db_column='codigoFamilia', max_length=4, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    descripcion = models.CharField(max_length=133, db_collation='Modern_Spanish_CI_AS')

    class Meta:
        managed = False
        db_table = 'tbl_sunatClase'


class TblSunatfamilia(models.Model):
    codigofamilia = models.CharField(db_column='codigoFamilia', max_length=4, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    codigosegmento = models.CharField(db_column='codigoSegmento', max_length=2, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    descripcion = models.CharField(max_length=86, db_collation='Modern_Spanish_CI_AS')

    class Meta:
        managed = False
        db_table = 'tbl_sunatFamilia'


class TblSunatproducto(models.Model):
    codigoproducto = models.CharField(db_column='codigoProducto', max_length=9, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    codigoclase = models.CharField(db_column='codigoClase', max_length=6, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    descripcion = models.CharField(max_length=156, db_collation='Modern_Spanish_CI_AS')

    class Meta:
        managed = False
        db_table = 'tbl_sunatProducto'


class TblTipoactmtto(models.Model):
    id = models.AutoField(db_column='Id')  # Field name made lowercase.
    codigo = models.CharField(max_length=3, db_collation='Modern_Spanish_CI_AS')
    descripcion = models.CharField(db_column='Descripcion', max_length=100, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    tipo = models.CharField(db_column='Tipo', max_length=10, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    estado = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'tbl_tipoActMtto'


class Tempo(models.Model):
    codcc = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    nomcc = models.CharField(max_length=161, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    m1_empl = models.CharField(max_length=8, db_collation='Modern_Spanish_CI_AS')
    e_des1 = models.CharField(max_length=60, db_collation='Modern_Spanish_CI_AS')
    cpto = models.CharField(max_length=6, db_collation='Modern_Spanish_CI_AS')
    c_des1 = models.CharField(max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    cantidad = models.DecimalField(max_digits=38, decimal_places=2, blank=True, null=True)
    importe = models.DecimalField(max_digits=38, decimal_places=2, blank=True, null=True)
    debe = models.CharField(max_length=12, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    haber = models.CharField(max_length=12, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    e_carg = models.CharField(max_length=2, db_collation='Modern_Spanish_CI_AS')
    cargo = models.CharField(max_length=60, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    e_area = models.CharField(max_length=4, db_collation='Modern_Spanish_CI_AS')
    area = models.CharField(max_length=60, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    afp = models.CharField(max_length=60, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    mes = models.CharField(max_length=20, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    tdoc = models.CharField(max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    ndoc = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    ccta = models.CharField(max_length=12, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    e_ctaotr = models.CharField(max_length=20, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    e_codu = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS')
    fechdoc = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'tempo'


class Tmpafrecopilacion(models.Model):
    item = models.FloatField(blank=True, null=True)
    codfamilia = models.FloatField(blank=True, null=True)
    familia = models.CharField(max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    codsede = models.FloatField(blank=True, null=True)
    sede = models.CharField(max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    codigo = models.CharField(db_column='CODIGO', max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    codarea = models.FloatField(db_column='codArea', blank=True, null=True)  # Field name made lowercase.
    area = models.CharField(db_column='AREA', max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    codrespomsable = models.FloatField(blank=True, null=True)
    responsable = models.CharField(db_column='RESPONSABLE', max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    descripcion = models.CharField(db_column='DESCRIPCION', max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    codmarca = models.FloatField(db_column='CodMarca', blank=True, null=True)  # Field name made lowercase.
    marca = models.CharField(db_column='MARCA', max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    modelo = models.CharField(db_column='MODELO', max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    serie = models.CharField(db_column='SERIE', max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    estado = models.CharField(db_column='ESTADO', max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    tipo_bien = models.CharField(db_column='TIPO_BIEN', max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    codigo_ant = models.CharField(max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    cuenta_contable = models.CharField(db_column='Cuenta_Contable', max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    saldo_inicial = models.FloatField(db_column='saldo_Inicial', blank=True, null=True)  # Field name made lowercase.
    fecha_adquisicion = models.DateTimeField(db_column='Fecha_Adquisicion', blank=True, null=True)  # Field name made lowercase.
    fecha_inicio_actividades = models.DateTimeField(db_column='fecha_Inicio_Actividades', blank=True, null=True)  # Field name made lowercase.
    tipodoc = models.CharField(db_column='TIPOdOC', max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nro_comprobante = models.CharField(db_column='Nro_Comprobante', max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    poncentaje_depreciacion = models.FloatField(db_column='Poncentaje_Depreciacion', blank=True, null=True)  # Field name made lowercase.
    depreciacion_acumulada = models.FloatField(db_column='Depreciacion_Acumulada', blank=True, null=True)  # Field name made lowercase.
    depreciacion_ejercicio = models.FloatField(db_column='Depreciacion_Ejercicio', blank=True, null=True)  # Field name made lowercase.
    depreciacion_historica = models.FloatField(db_column='Depreciacion_Historica', blank=True, null=True)  # Field name made lowercase.
    pordepreanual = models.FloatField(db_column='porDepreAnual', blank=True, null=True)  # Field name made lowercase.
    mesesdepre = models.FloatField(blank=True, null=True)
    f31 = models.FloatField(db_column='F31', blank=True, null=True)  # Field name made lowercase.
    f32 = models.CharField(db_column='F32', max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    f33 = models.CharField(db_column='F33', max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tmpAFRecopilacion'


class Tmpafreportes(models.Model):
    responsable = models.CharField(max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    ubicacion = models.CharField(max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    codigo_barrasactivo = models.CharField(db_column='codigo_barrasActivo', max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    cuenta_compra = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    nombreaf = models.TextField(db_column='NombreAF', db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase. This field type is a guess.
    nombre_corto = models.CharField(max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    marca = models.CharField(max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    modelo = models.CharField(max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    serie = models.CharField(max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    valor_compratributaria = models.DecimalField(db_column='valor_CompraTributaria', max_digits=18, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    adquisicion = models.DecimalField(max_digits=18, decimal_places=2, blank=True, null=True)
    agregado = models.DecimalField(max_digits=38, decimal_places=2)
    retiro = models.IntegerField()
    otros = models.IntegerField()
    valhistorico = models.DecimalField(db_column='ValHistorico', max_digits=38, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    inflacion = models.IntegerField()
    ajusteinflacion = models.DecimalField(db_column='AjusteInflacion', max_digits=38, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    fecha_compratributaria = models.DateTimeField(db_column='fecha_CompraTributaria', blank=True, null=True)  # Field name made lowercase.
    fecha_ingreso = models.DateTimeField(blank=True, null=True)
    descripcion = models.CharField(max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    docautoriza = models.CharField(db_column='docAutoriza', max_length=1, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    porcentadeprecia = models.DecimalField(db_column='PorcentaDeprecia', max_digits=6, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    depreacumant = models.DecimalField(db_column='depreAcumAnt', max_digits=38, decimal_places=2)  # Field name made lowercase.
    depreacumact = models.DecimalField(db_column='depreAcumAct', max_digits=38, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    deprerelaretiro = models.IntegerField(db_column='DepreRelaRetiro')  # Field name made lowercase.
    deprerelaotros = models.IntegerField(db_column='DepreRelaOtros')  # Field name made lowercase.
    acumhistorico = models.DecimalField(db_column='AcumHistorico', max_digits=38, decimal_places=2)  # Field name made lowercase.
    depreacumulajus = models.DecimalField(db_column='DepreAcumulAjus', max_digits=38, decimal_places=2)  # Field name made lowercase.
    valorneto = models.DecimalField(db_column='valorNeto', max_digits=38, decimal_places=2)  # Field name made lowercase.
    familia = models.CharField(max_length=105, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    zona = models.CharField(max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    ctadeprecia = models.CharField(db_column='CtaDeprecia', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    ctarevaloriza = models.CharField(db_column='ctaRevaloriza', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    ctareadecua = models.CharField(db_column='ctaReadecua', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tmpAFReportes'


class Tmpafreportes1(models.Model):
    codigo_barrasactivo = models.CharField(db_column='codigo_barrasActivo', max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nombreaf = models.TextField(db_column='NombreAF', db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase. This field type is a guess.
    zona = models.CharField(max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    familia = models.CharField(max_length=105, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    ctadeprecia = models.CharField(db_column='CtaDeprecia', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    ctarevaloriza = models.CharField(db_column='ctaRevaloriza', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    ctareadecua = models.CharField(db_column='ctaReadecua', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    depreacumact = models.DecimalField(db_column='depreAcumAct', max_digits=38, decimal_places=2, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tmpAFReportes1'


class Tmpapertura(models.Model):
    zona = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    codunidadeconomica = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    codigodocumentoreferencia = models.CharField(db_column='codigoDocumentoReferencia', max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nrodocreferencia = models.CharField(db_column='NroDocReferencia', max_length=14, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    fechadocreferencia = models.DateTimeField(db_column='FechaDocReferencia', blank=True, null=True)  # Field name made lowercase.
    cuenta = models.CharField(max_length=12, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    codpro = models.CharField(max_length=14, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    saldo = models.DecimalField(max_digits=38, decimal_places=2, blank=True, null=True)
    tipo_refcomprobmodi = models.CharField(max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    serie_refcomprobmodi = models.CharField(max_length=4, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    nro_refcomprobmodi = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'tmpApertura'


class Tmpbc(models.Model):
    codcuenta = models.CharField(max_length=12, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    indebe = models.DecimalField(max_digits=38, decimal_places=2)
    inhaber = models.DecimalField(max_digits=38, decimal_places=2)
    andebe = models.DecimalField(max_digits=38, decimal_places=2)
    anhaber = models.DecimalField(max_digits=38, decimal_places=2)
    debe = models.DecimalField(db_column='DEBE', max_digits=38, decimal_places=2)  # Field name made lowercase.
    haber = models.DecimalField(db_column='HABER', max_digits=38, decimal_places=2)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tmpBC'


class Tmpbcres(models.Model):
    cuenta = models.CharField(db_column='Cuenta', max_length=12, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    dcuenta = models.CharField(db_column='DCuenta', max_length=200, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    inicialdebe = models.DecimalField(max_digits=38, decimal_places=2, blank=True, null=True)
    inicialhaber = models.DecimalField(max_digits=38, decimal_places=2, blank=True, null=True)
    anteriordebe = models.DecimalField(max_digits=38, decimal_places=2, blank=True, null=True)
    anteriorhaber = models.DecimalField(max_digits=38, decimal_places=2, blank=True, null=True)
    mesdebe = models.DecimalField(max_digits=38, decimal_places=2, blank=True, null=True)
    meshaber = models.DecimalField(max_digits=38, decimal_places=2, blank=True, null=True)
    saldodebe = models.DecimalField(max_digits=2, decimal_places=2)
    saldohaber = models.DecimalField(max_digits=2, decimal_places=2)
    inventariodebe = models.DecimalField(max_digits=38, decimal_places=2, blank=True, null=True)
    inventariohaber = models.DecimalField(max_digits=38, decimal_places=2, blank=True, null=True)
    naturalezadebe = models.DecimalField(max_digits=38, decimal_places=2, blank=True, null=True)
    naturalezahaber = models.DecimalField(max_digits=38, decimal_places=2, blank=True, null=True)
    funciondebe = models.DecimalField(max_digits=38, decimal_places=2, blank=True, null=True)
    funcionhaber = models.DecimalField(max_digits=38, decimal_places=2, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'tmpBCRes'


class Tmpbctc(models.Model):
    codcuenta = models.CharField(max_length=12, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    indebe = models.DecimalField(max_digits=38, decimal_places=2)
    inhaber = models.DecimalField(max_digits=38, decimal_places=2)
    andebe = models.DecimalField(max_digits=38, decimal_places=2)
    anhaber = models.DecimalField(max_digits=38, decimal_places=2)
    debe = models.DecimalField(db_column='DEBE', max_digits=38, decimal_places=2)  # Field name made lowercase.
    haber = models.DecimalField(db_column='HABER', max_digits=38, decimal_places=2)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tmpBCTC'


class Tmpclitc(models.Model):
    codzona = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    codunidadeconomica = models.CharField(db_column='CodUnidadEconomica', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nrodocumento = models.CharField(db_column='nroDocumento', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    codpro = models.CharField(max_length=14, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    coddoc = models.CharField(db_column='CodDoc', max_length=20, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    codigodocumentoreferencia = models.CharField(db_column='codigoDocumentoReferencia', max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nrodocreferencia = models.CharField(db_column='NroDocReferencia', max_length=14, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    fechadocreferencia = models.DateTimeField(blank=True, null=True)
    codcuenta = models.CharField(max_length=12, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    impdebe = models.DecimalField(max_digits=38, decimal_places=2, blank=True, null=True)
    imphaber = models.DecimalField(max_digits=38, decimal_places=2, blank=True, null=True)
    impdebedolar = models.DecimalField(db_column='impdebeDolar', max_digits=38, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    imphaberdolar = models.DecimalField(max_digits=38, decimal_places=2, blank=True, null=True)
    moneda = models.BigIntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'tmpCliTC'


class Tmpdaot(models.Model):
    correlativo = models.IntegerField(db_column='Correlativo', blank=True, null=True)  # Field name made lowercase.
    tipodoc = models.CharField(db_column='TipoDoc', max_length=1, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    numerodoc = models.CharField(db_column='NumeroDoc', max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    periodo = models.CharField(max_length=4, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    tipopersona = models.CharField(db_column='tipoPersona', max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    tipodocumento = models.CharField(db_column='TipoDocumento', max_length=1, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nrodocumento = models.CharField(db_column='NroDocumento', max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    importe = models.DecimalField(db_column='Importe', max_digits=18, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    nombre1 = models.CharField(db_column='Nombre1', max_length=30, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nombre2 = models.CharField(db_column='Nombre2', max_length=30, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    apepaterno = models.CharField(db_column='ApePAterno', max_length=20, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    apematerno = models.CharField(db_column='ApeMaterno', max_length=30, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    razsocial = models.CharField(db_column='RazSocial', max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tmpDaot'


class Tmpdiftc(models.Model):
    fechadocreferencia = models.DateTimeField(blank=True, null=True)
    tccomprapro = models.DecimalField(db_column='tcCompraPro', max_digits=10, decimal_places=3)  # Field name made lowercase.
    tcventapro = models.DecimalField(db_column='tcVentaPro', max_digits=10, decimal_places=3, blank=True, null=True)  # Field name made lowercase.
    codpro = models.CharField(max_length=14, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    codigodocumentoreferencia = models.CharField(db_column='codigoDocumentoReferencia', max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nrodocreferencia = models.CharField(db_column='NroDocReferencia', max_length=14, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    impdebe = models.DecimalField(max_digits=38, decimal_places=2, blank=True, null=True)
    impdebedolar = models.DecimalField(db_column='impdebeDolar', max_digits=38, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    imphaber = models.DecimalField(max_digits=38, decimal_places=2, blank=True, null=True)
    imphaberdolar = models.DecimalField(db_column='imphaberDolar', max_digits=38, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    codcuenta = models.CharField(max_length=12, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    fecha = models.DateTimeField()
    tipocambiocompra = models.DecimalField(db_column='TipoCambioCompra', max_digits=10, decimal_places=3)  # Field name made lowercase.
    tipocambioventa = models.DecimalField(db_column='TipoCambioVenta', max_digits=10, decimal_places=3, blank=True, null=True)  # Field name made lowercase.
    dif = models.DecimalField(max_digits=11, decimal_places=3, blank=True, null=True)
    diftcd = models.DecimalField(db_column='diftcD', max_digits=38, decimal_places=5, blank=True, null=True)  # Field name made lowercase.
    diftch = models.DecimalField(db_column='diftcH', max_digits=38, decimal_places=5, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tmpDifTC'


class Tmpdocpendientes(models.Model):
    grupo = models.CharField(max_length=2, db_collation='Modern_Spanish_CI_AS')
    codzona = models.CharField(max_length=6, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    unidad_economica = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    codpro = models.CharField(max_length=11, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    codigodocumentoreferencia = models.CharField(db_column='codigoDocumentoReferencia', max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nrodocreferencia = models.CharField(db_column='NrodocReferencia', max_length=14, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    fechadocreferencia = models.DateTimeField(blank=True, null=True)
    codcuenta = models.CharField(max_length=12, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    moneda = models.BigIntegerField(blank=True, null=True)
    impdebe = models.DecimalField(max_digits=38, decimal_places=2, blank=True, null=True)
    imphaber = models.DecimalField(max_digits=38, decimal_places=2, blank=True, null=True)
    impdebedolar = models.DecimalField(max_digits=38, decimal_places=2, blank=True, null=True)
    imphaberdolar = models.DecimalField(max_digits=38, decimal_places=2, blank=True, null=True)
    dif = models.DecimalField(max_digits=38, decimal_places=2, blank=True, null=True)
    tccompra = models.DecimalField(db_column='tcCompra', max_digits=10, decimal_places=3, blank=True, null=True)  # Field name made lowercase.
    tcventa = models.DecimalField(db_column='tcVenta', max_digits=10, decimal_places=3, blank=True, null=True)  # Field name made lowercase.
    diftc = models.DecimalField(max_digits=38, decimal_places=2, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'tmpDocpendientes'


class Tmplecompras(models.Model):
    periodo = models.CharField(max_length=8, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    cuo = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    correlativo = models.CharField(max_length=101, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    femision = models.CharField(db_column='fEmision', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    fvcto = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    destipodocumento = models.CharField(db_column='desTipoDocumento', max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    serie = models.CharField(max_length=4, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    aniodua = models.CharField(db_column='anioDua', max_length=4, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nrodocreferencia = models.CharField(max_length=8, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    impcampo9 = models.CharField(max_length=1, db_collation='Modern_Spanish_CI_AS')
    tipdoc = models.CharField(max_length=1, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    ruc = models.CharField(max_length=14, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    proveedor = models.CharField(max_length=60, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    agdoge1 = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    igv_1 = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    agdoge_ng = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    igv_2 = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    agdo_ng = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    igv_3 = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    valor_adquisicion = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    isc = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    otroimp = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    otrocpto = models.CharField(db_column='otroCpto', max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    totalimporte = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    moneda = models.CharField(max_length=3, db_collation='Modern_Spanish_CI_AS')
    tipocambio = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    fecha_refcomprobmodi = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    tipo_refcomprobmodi = models.CharField(max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    serie_refcomprobmodi = models.CharField(max_length=4, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    coddua = models.CharField(db_column='codDua', max_length=3, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nro_refcomprobmodi = models.CharField(max_length=8, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    fechadetrac = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    nrodetrac = models.CharField(max_length=24, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    marcasujreten = models.CharField(db_column='marcasujReten', max_length=1, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    clasbien = models.CharField(max_length=24, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    identicontrato = models.CharField(db_column='identiContrato', max_length=1, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    tipo1 = models.CharField(max_length=1, db_collation='Modern_Spanish_CI_AS')
    tipo2 = models.CharField(max_length=1, db_collation='Modern_Spanish_CI_AS')
    tipo3 = models.CharField(max_length=1, db_collation='Modern_Spanish_CI_AS')
    tipo4 = models.CharField(max_length=1, db_collation='Modern_Spanish_CI_AS')
    mediopago = models.CharField(max_length=1, db_collation='Modern_Spanish_CI_AS')
    estado = models.CharField(max_length=1, db_collation='Modern_Spanish_CI_AS')
    cierre = models.CharField(db_column='Cierre', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tmpLeCompras'


class Tmplecompras2(models.Model):
    periodo = models.CharField(max_length=8, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    cuo = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    correlativo = models.CharField(max_length=101, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    femision = models.CharField(db_column='fEmision', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    fvcto = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    destipodocumento = models.CharField(db_column='desTipoDocumento', max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    serie = models.CharField(max_length=4, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    aniodua = models.CharField(db_column='anioDua', max_length=4, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nrodocreferencia = models.CharField(max_length=8, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    impcampo9 = models.CharField(max_length=1, db_collation='Modern_Spanish_CI_AS')
    tipdoc = models.CharField(max_length=1, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    ruc = models.CharField(max_length=14, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    proveedor = models.CharField(max_length=60, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    agdoge1 = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    igv_1 = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    agdoge_ng = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    igv_2 = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    agdo_ng = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    igv_3 = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    valor_adquisicion = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    isc = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    otroimp = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    otrocpto = models.CharField(db_column='otroCpto', max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    totalimporte = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    moneda = models.CharField(max_length=3, db_collation='Modern_Spanish_CI_AS')
    tipocambio = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    fecha_refcomprobmodi = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    tipo_refcomprobmodi = models.CharField(max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    serie_refcomprobmodi = models.CharField(max_length=4, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    coddua = models.CharField(db_column='codDua', max_length=3, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nro_refcomprobmodi = models.CharField(max_length=8, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    fechadetrac = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    nrodetrac = models.CharField(max_length=24, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    marcasujreten = models.CharField(db_column='marcasujReten', max_length=1, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    clasbien = models.CharField(max_length=24, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    identicontrato = models.CharField(db_column='identiContrato', max_length=1, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    tipo1 = models.CharField(max_length=1, db_collation='Modern_Spanish_CI_AS')
    tipo2 = models.CharField(max_length=1, db_collation='Modern_Spanish_CI_AS')
    tipo3 = models.CharField(max_length=1, db_collation='Modern_Spanish_CI_AS')
    tipo4 = models.CharField(max_length=1, db_collation='Modern_Spanish_CI_AS')
    mediopago = models.CharField(max_length=1, db_collation='Modern_Spanish_CI_AS')
    estado = models.CharField(max_length=1, db_collation='Modern_Spanish_CI_AS')
    cierre = models.CharField(db_column='Cierre', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tmpLeCompras2'


class Tmplediario(models.Model):
    periodo = models.CharField(max_length=8, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    cuo = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    correlativo = models.CharField(max_length=101, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    codcuenta = models.CharField(max_length=24, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    uniecon = models.CharField(db_column='UniEcon', max_length=1, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    cencosto = models.CharField(db_column='CenCosto', max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    moneda = models.CharField(max_length=3, db_collation='Modern_Spanish_CI_AS')
    tipodocemisor = models.CharField(db_column='tipodocEmisor', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    docemisor = models.CharField(db_column='DocEmisor', max_length=14, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    coddocref = models.CharField(db_column='CodDocRef', max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    serie = models.CharField(db_column='Serie', max_length=20, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nrodocref = models.CharField(db_column='NroDocRef', max_length=20, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    fechcontable = models.CharField(db_column='FechContable', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    fvcto = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS')
    foperacion = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    descripcion = models.CharField(max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    glosareferencia = models.CharField(db_column='GlosaReferencia', max_length=1, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    debe = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    haber = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    codigolibro = models.CharField(db_column='CodigoLibro', max_length=1, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    estado = models.IntegerField()
    cierre = models.IntegerField(db_column='Cierre', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tmpLeDiario'


class Tmpleple(models.Model):
    periodo = models.CharField(max_length=8, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    cuo = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    correlativo = models.CharField(max_length=101, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    tipodoc = models.CharField(max_length=1, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    nrodoc = models.CharField(db_column='Nrodoc', max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    razsoc = models.CharField(db_column='RazSoc', max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    tipodocumento = models.CharField(db_column='tipoDocumento', max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    serie = models.CharField(max_length=42, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    nrodocumento = models.CharField(max_length=42, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    fecemi = models.CharField(db_column='FecEmi', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    monto = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    estado = models.IntegerField()
    cierre = models.IntegerField(db_column='Cierre', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tmpLePle'


class Tmpleple2(models.Model):
    campo1 = models.CharField(db_column='Campo1', max_length=12, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    campo2 = models.CharField(db_column='Campo2', max_length=200, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    campo3 = models.DecimalField(max_digits=38, decimal_places=2, blank=True, null=True)
    campo4 = models.DecimalField(db_column='Campo4', max_digits=38, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    campo5 = models.DecimalField(db_column='Campo5', max_digits=38, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    campo6 = models.DecimalField(db_column='Campo6', max_digits=38, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    campo7 = models.DecimalField(db_column='Campo7', max_digits=38, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    campo8 = models.DecimalField(db_column='Campo8', max_digits=38, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    campo9 = models.DecimalField(db_column='Campo9', max_digits=38, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    campo10 = models.DecimalField(db_column='Campo10', max_digits=38, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    campo11 = models.DecimalField(db_column='Campo11', max_digits=38, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    campo12 = models.DecimalField(db_column='Campo12', max_digits=38, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    campo13 = models.DecimalField(db_column='Campo13', max_digits=38, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    campo14 = models.DecimalField(db_column='Campo14', max_digits=38, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    campo15 = models.DecimalField(db_column='Campo15', max_digits=38, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    campo16 = models.DecimalField(db_column='Campo16', max_digits=38, decimal_places=2, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tmpLePle2'


class Tmpleple2Ce(models.Model):
    campo1 = models.CharField(db_column='Campo1', max_length=12, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    campo2 = models.CharField(db_column='Campo2', max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    campo3 = models.CharField(max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    campo4 = models.CharField(db_column='Campo4', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    campo5 = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    campo6 = models.CharField(db_column='Campo6', max_length=3, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    campo7 = models.CharField(db_column='Campo7', max_length=250, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    campo8 = models.CharField(db_column='Campo8', max_length=13, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    campo9 = models.CharField(db_column='Campo9', max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    campo10 = models.CharField(max_length=250, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    campo11 = models.CharField(db_column='Campo11', max_length=12, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    campo12 = models.CharField(db_column='Campo12', max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    campo13 = models.CharField(db_column='Campo13', max_length=30, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    campo14 = models.DecimalField(db_column='Campo14', max_digits=38, decimal_places=5, blank=True, null=True)  # Field name made lowercase.
    campo15 = models.DecimalField(db_column='Campo15', max_digits=38, decimal_places=5, blank=True, null=True)  # Field name made lowercase.
    campo16 = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    campo17 = models.CharField(max_length=3, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    campo18 = models.CharField(max_length=3, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    campo19 = models.CharField(max_length=30, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'tmpLePle2CE'


class Tmpleple49(models.Model):
    campo1 = models.CharField(db_column='Campo1', max_length=12, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    campo2 = models.CharField(db_column='Campo2', max_length=300, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    campo3 = models.CharField(max_length=20, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    campo4 = models.CharField(db_column='Campo4', max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    campo5 = models.DecimalField(db_column='Campo5', max_digits=38, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    campo6 = models.DateTimeField(db_column='Campo6', blank=True, null=True)  # Field name made lowercase.
    campo7 = models.CharField(max_length=40, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    campo8 = models.CharField(max_length=12, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    campo9 = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'tmpLePle49'


class Tmpleplecc(models.Model):
    campo1 = models.CharField(db_column='Campo1', max_length=12, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    campo2 = models.CharField(db_column='Campo2', max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    campo3 = models.CharField(max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    campo4 = models.CharField(db_column='Campo4', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    campo5 = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    campo6 = models.CharField(db_column='Campo6', max_length=3, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    campo7 = models.CharField(db_column='Campo7', max_length=250, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    campo8 = models.CharField(db_column='Campo8', max_length=13, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    campo9 = models.CharField(db_column='Campo9', max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    campo10 = models.CharField(max_length=250, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    campo11 = models.CharField(db_column='Campo11', max_length=12, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    campo12 = models.CharField(db_column='Campo12', max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    campo13 = models.CharField(db_column='Campo13', max_length=30, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    campo14 = models.DecimalField(db_column='Campo14', max_digits=38, decimal_places=5, blank=True, null=True)  # Field name made lowercase.
    campo15 = models.DecimalField(db_column='Campo15', max_digits=38, decimal_places=5, blank=True, null=True)  # Field name made lowercase.
    campo16 = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    campo17 = models.CharField(max_length=3, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    campo18 = models.CharField(max_length=3, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    campo19 = models.CharField(max_length=30, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    campo20 = models.CharField(max_length=3, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'tmpLePleCC'


class Tmpleventas(models.Model):
    periodo = models.CharField(max_length=8, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    cuo = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    correlativo = models.CharField(max_length=101, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    femision = models.CharField(db_column='fEmision', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    fvcto = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    codigodocumento = models.CharField(db_column='CodigoDocumento', max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    serie = models.CharField(max_length=4, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    nrodocumento = models.CharField(max_length=14, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    impcampo8 = models.CharField(max_length=7, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    tipdoc = models.CharField(max_length=1, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    ruc = models.CharField(max_length=14, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    proveedor = models.CharField(max_length=61, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    exportacion = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    baseimponible = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    dsctobi = models.CharField(db_column='DsctoBI', max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    igv = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    dsctoigv = models.CharField(db_column='DsctoIgv', max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    exonerado = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    inafecta = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    isc = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    baseimponibleiva = models.CharField(db_column='baseimponibleIva', max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    impuestoiva = models.CharField(db_column='ImpuestoIva', max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    otrostributos = models.CharField(db_column='otrosTributos', max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    otroscptos = models.CharField(db_column='otrosCptos', max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    total = models.CharField(db_column='Total', max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    moneda = models.CharField(max_length=3, db_collation='Modern_Spanish_CI_AS')
    tipocambio = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    fecha_refcomprobmodi = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    tipo_refcomprobmodi = models.CharField(max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    serie_refcomprobmodi = models.CharField(max_length=4, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    nro_refcomprobmodi = models.CharField(max_length=9, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    identicontrato = models.CharField(db_column='identiContrato', max_length=1, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    tipo1 = models.CharField(max_length=1, db_collation='Modern_Spanish_CI_AS')
    mediopago = models.CharField(db_column='medioPago', max_length=1, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    estado = models.CharField(max_length=1, db_collation='Modern_Spanish_CI_AS')
    cierre = models.CharField(db_column='Cierre', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tmpLeVentas'


class Tmpmov(models.Model):
    sit = models.CharField(max_length=1, db_collation='Modern_Spanish_CI_AS')
    idmoneda = models.BigIntegerField()
    fecha = models.DateTimeField()
    tipocambiocompra = models.DecimalField(db_column='TipoCambioCompra', max_digits=10, decimal_places=3)  # Field name made lowercase.
    tipocambioventa = models.DecimalField(db_column='TipoCambioVenta', max_digits=10, decimal_places=3, blank=True, null=True)  # Field name made lowercase.
    incmov = models.DecimalField(db_column='IncMov', max_digits=6, decimal_places=3, blank=True, null=True)  # Field name made lowercase.
    codmgc = models.CharField(max_length=3, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    impdebedolar = models.DecimalField(max_digits=38, decimal_places=2, blank=True, null=True)
    imphaberdolar = models.DecimalField(max_digits=38, decimal_places=2, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'tmpMov'


class Tmpreparo(models.Model):
    mgc = models.CharField(max_length=50, db_collation='Modern_Spanish_CI_AS')
    nrodocumento = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    mes = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    fechco = models.DateTimeField(db_column='fechCo', blank=True, null=True)  # Field name made lowercase.
    fechadocreferencia = models.DateTimeField(blank=True, null=True)
    codpro = models.CharField(max_length=14, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    proveedor = models.CharField(max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    codigodocumentoreferencia = models.CharField(max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    destipodocumento = models.CharField(max_length=60, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    nrodocreferencia = models.CharField(max_length=14, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    glosa = models.CharField(max_length=250, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    impdebe = models.DecimalField(max_digits=15, decimal_places=2, blank=True, null=True)
    impdebedolar = models.DecimalField(db_column='impdebeDolar', max_digits=15, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    codcuenta = models.CharField(max_length=12, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    descripcion = models.CharField(max_length=150, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'tmpReparo'


class Tmpsirecom11(models.Model):
    rucemp = models.CharField(db_column='rucEmp', max_length=11, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    razonsocialemp = models.CharField(db_column='RazonsocialEmp', max_length=150, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    periodo = models.CharField(db_column='Periodo', max_length=8, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    femision = models.CharField(db_column='fEmision', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    fvcto = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    destipodocumento = models.CharField(db_column='desTipoDocumento', max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    serie = models.CharField(max_length=4, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    aniodua = models.CharField(db_column='anioDua', max_length=4, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nrodocreferencia = models.CharField(max_length=8, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    impcampo9 = models.CharField(max_length=1, db_collation='Modern_Spanish_CI_AS')
    tipdoc = models.CharField(max_length=1, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    ruc = models.CharField(max_length=14, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    proveedor = models.CharField(max_length=60, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    agdoge1 = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    igv_1 = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    agdoge_ng = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    igv_2 = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    agdo_ng = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    igv_3 = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    valor_adquisicion = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    isc = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    otroimp = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    otrocpto = models.CharField(db_column='otroCpto', max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    totalimporte = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    moneda = models.CharField(max_length=3, db_collation='Modern_Spanish_CI_AS')
    tipocambio = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    fecha_refcomprobmodi = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    tipo_refcomprobmodi = models.CharField(max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    serie_refcomprobmodi = models.CharField(max_length=4, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    coddua = models.CharField(db_column='codDua', max_length=3, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nro_refcomprobmodi = models.CharField(max_length=8, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    fechadetrac = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    nrodetrac = models.CharField(max_length=24, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    marcasujreten = models.CharField(db_column='marcasujReten', max_length=1, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    clasbien = models.CharField(max_length=24, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    identicontrato = models.CharField(db_column='identiContrato', max_length=1, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    tipo1 = models.CharField(max_length=1, db_collation='Modern_Spanish_CI_AS')
    tipo2 = models.CharField(max_length=1, db_collation='Modern_Spanish_CI_AS')
    tipo3 = models.CharField(max_length=1, db_collation='Modern_Spanish_CI_AS')
    tipo4 = models.CharField(max_length=1, db_collation='Modern_Spanish_CI_AS')
    mediopago = models.CharField(max_length=1, db_collation='Modern_Spanish_CI_AS')

    class Meta:
        managed = False
        db_table = 'tmpSireCom11'


class Tmpsireven02(models.Model):
    rucemp = models.CharField(db_column='rucEmp', max_length=11, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    razonsocialemp = models.CharField(db_column='RazonsocialEmp', max_length=150, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    periodo = models.CharField(db_column='Periodo', max_length=8, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    femision = models.CharField(db_column='fEmision', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    fvcto = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    codigodocumento = models.CharField(db_column='CodigoDocumento', max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    serie = models.CharField(max_length=4, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    nrodocumento = models.CharField(max_length=14, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    impcampo8 = models.CharField(max_length=7, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    tipdoc = models.CharField(max_length=1, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    ruc = models.CharField(max_length=14, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    proveedor = models.CharField(max_length=61, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    exportacion = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    baseimponible = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    dsctobi = models.CharField(db_column='DsctoBI', max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    igv = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    dsctoigv = models.CharField(db_column='DsctoIgv', max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    exonerado = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    inafecta = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    isc = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    baseimponibleiva = models.CharField(db_column='baseimponibleIva', max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    impuestoiva = models.CharField(db_column='ImpuestoIva', max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    otrostributos = models.CharField(db_column='otrosTributos', max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    otroscptos = models.CharField(db_column='otrosCptos', max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    total = models.CharField(db_column='Total', max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    moneda = models.CharField(max_length=3, db_collation='Modern_Spanish_CI_AS')
    tipocambio = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    fecha_refcomprobmodi = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    tipo_refcomprobmodi = models.CharField(max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    serie_refcomprobmodi = models.CharField(max_length=4, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    nro_refcomprobmodi = models.CharField(max_length=9, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    identicontrato = models.CharField(db_column='identiContrato', max_length=1, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    tipo1 = models.CharField(max_length=1, db_collation='Modern_Spanish_CI_AS')
    mediopago = models.CharField(db_column='medioPago', max_length=1, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tmpSireVen02'


class Tmpsireven03(models.Model):
    rucemp = models.CharField(db_column='rucEmp', max_length=11, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    razonsocialemp = models.CharField(db_column='RazonsocialEmp', max_length=150, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    periodo = models.CharField(db_column='Periodo', max_length=8, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    femision = models.CharField(db_column='fEmision', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    fvcto = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    codigodocumento = models.CharField(db_column='CodigoDocumento', max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    serie = models.CharField(max_length=4, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    nrodocumento = models.CharField(max_length=14, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    impcampo8 = models.CharField(max_length=7, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    tipdoc = models.CharField(max_length=1, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    ruc = models.CharField(max_length=14, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    proveedor = models.CharField(max_length=61, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    exportacion = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    baseimponible = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    dsctobi = models.CharField(db_column='DsctoBI', max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    igv = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    dsctoigv = models.CharField(db_column='DsctoIgv', max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    exonerado = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    inafecta = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    isc = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    baseimponibleiva = models.CharField(db_column='baseimponibleIva', max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    impuestoiva = models.CharField(db_column='ImpuestoIva', max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    otrostributos = models.CharField(db_column='otrosTributos', max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    otroscptos = models.CharField(db_column='otrosCptos', max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    total = models.CharField(db_column='Total', max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    moneda = models.CharField(max_length=3, db_collation='Modern_Spanish_CI_AS')
    tipocambio = models.CharField(max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    fecha_refcomprobmodi = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    tipo_refcomprobmodi = models.CharField(max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    serie_refcomprobmodi = models.CharField(max_length=4, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    nro_refcomprobmodi = models.CharField(max_length=9, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    identicontrato = models.CharField(db_column='identiContrato', max_length=1, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    tipo1 = models.CharField(max_length=1, db_collation='Modern_Spanish_CI_AS')
    mediopago = models.CharField(db_column='medioPago', max_length=1, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tmpSireVen03'


class Tmpultdia(models.Model):
    sit = models.CharField(max_length=1, db_collation='Modern_Spanish_CI_AS')
    idmoneda = models.BigIntegerField()
    fecha = models.DateTimeField()
    tipocambiocompra = models.DecimalField(db_column='TipoCambioCompra', max_digits=10, decimal_places=3)  # Field name made lowercase.
    tipocambioventa = models.DecimalField(db_column='TipoCambioVenta', max_digits=10, decimal_places=3, blank=True, null=True)  # Field name made lowercase.
    incmov = models.DecimalField(db_column='IncMov', max_digits=6, decimal_places=3, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tmpUltDia'


class Tmpexportaventas(models.Model):
    grupo = models.CharField(db_column='GRUPO', max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    zona = models.CharField(db_column='ZONA', max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    unidad_economica = models.CharField(db_column='UNIDAD_ECONOMICA', max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    a±o = models.FloatField(db_column='AÐO', blank=True, null=True)  # Field name made lowercase.
    mes = models.CharField(db_column='MES', max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    fecha_registro = models.DateTimeField(db_column='FECHA_REGISTRO', blank=True, null=True)  # Field name made lowercase.
    cuenta_contable = models.CharField(db_column='CUENTA_CONTABLE', max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    cuenta_abono = models.CharField(db_column='CUENTA_ABONO', max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    automatico = models.CharField(db_column='AUTOMATICO', max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    proveedor = models.CharField(db_column='PROVEEDOR', max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    razon_social = models.CharField(db_column='Razon_Social', max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    direccion = models.CharField(db_column='Direccion', max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    tipo_documento = models.CharField(db_column='TIPO_DOCUMENTO', max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nro_documento = models.CharField(db_column='NRO_DOCUMENTO', max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nro_documento2 = models.CharField(db_column='NRO_DOCUMENTO2', max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    fecha_documento = models.DateTimeField(db_column='FECHA_DOCUMENTO', blank=True, null=True)  # Field name made lowercase.
    detalle_venta = models.CharField(db_column='DETALLE_VENTA', max_length=280, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    tipo_moneda = models.CharField(db_column='TIPO_MONEDA', max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    tipo_cambio = models.FloatField(db_column='TIPO_CAMBIO', blank=True, null=True)  # Field name made lowercase.
    tipo_operacion = models.FloatField(db_column='TIPO_OPERACION', blank=True, null=True)  # Field name made lowercase.
    importe_debe = models.FloatField(db_column='IMPORTE_DEBE', blank=True, null=True)  # Field name made lowercase.
    importe_haber = models.FloatField(db_column='IMPORTE_HABER', blank=True, null=True)  # Field name made lowercase.
    afecto = models.FloatField(db_column='AFECTO', blank=True, null=True)  # Field name made lowercase.
    monto_igv = models.FloatField(db_column='MONTO_IGV', blank=True, null=True)  # Field name made lowercase.
    isc = models.FloatField(db_column='ISC', blank=True, null=True)  # Field name made lowercase.
    monto_isc = models.FloatField(db_column='MONTO_ISC', blank=True, null=True)  # Field name made lowercase.
    cancelado = models.FloatField(db_column='CANCELADO', blank=True, null=True)  # Field name made lowercase.
    percepcion = models.FloatField(db_column='PERCEPCION', blank=True, null=True)  # Field name made lowercase.
    monto_percepcion = models.FloatField(db_column='MONTO_PERCEPCION', blank=True, null=True)  # Field name made lowercase.
    fechanc = models.DateTimeField(blank=True, null=True)
    tipo_docnc = models.CharField(max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    nro_docnc = models.CharField(max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    voucher = models.FloatField(blank=True, null=True)
    glosa = models.CharField(max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    ccosto = models.CharField(max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    fefec = models.CharField(max_length=255, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    adicional1 = models.FloatField(db_column='Adicional1', blank=True, null=True)  # Field name made lowercase.
    adicional2 = models.FloatField(db_column='Adicional2', blank=True, null=True)  # Field name made lowercase.
    adicional3 = models.FloatField(db_column='Adicional3', blank=True, null=True)  # Field name made lowercase.
    otrosmontos = models.FloatField(db_column='OtrosMontos', blank=True, null=True)  # Field name made lowercase.
    ctacancelado = models.CharField(db_column='CtaCancelado', max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    ctapercepcion = models.CharField(db_column='CtaPercepcion', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    ctaigv = models.CharField(db_column='CtaIGV', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    ctaisc = models.CharField(db_column='CtaISC', max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    ctaaux = models.CharField(db_column='CtaAUX', max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    correla = models.CharField(db_column='correlA', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nrodocumento = models.CharField(db_column='Nrodocumento', max_length=105, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    ctaefec = models.CharField(max_length=7, db_collation='Modern_Spanish_CI_AS')
    totdebe = models.FloatField(db_column='TotDebe', blank=True, null=True)  # Field name made lowercase.
    tothaber = models.FloatField(db_column='TotHaber', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tmpexportaVentas'


class Tmpffee(models.Model):
    codigo = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    total = models.DecimalField(max_digits=38, decimal_places=2, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'tmpffee'


class Tmpgrupoconta(models.Model):
    idmgc = models.AutoField(db_column='IdMGC')  # Field name made lowercase.
    codmgc = models.CharField(db_column='CodMGC', max_length=50, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    mgc = models.CharField(db_column='MGC', max_length=50, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    sistema = models.CharField(db_column='Sistema', max_length=50, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    codzona = models.CharField(db_column='CodZona', max_length=6, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    codunidadeconomica = models.CharField(db_column='CodUnidadEconomica', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    anio = models.IntegerField(db_column='Anio')  # Field name made lowercase.
    apertura = models.IntegerField(db_column='Apertura', blank=True, null=True)  # Field name made lowercase.
    ene = models.IntegerField(db_column='Ene', blank=True, null=True)  # Field name made lowercase.
    feb = models.IntegerField(db_column='Feb', blank=True, null=True)  # Field name made lowercase.
    mar = models.IntegerField(db_column='Mar', blank=True, null=True)  # Field name made lowercase.
    abr = models.IntegerField(db_column='Abr', blank=True, null=True)  # Field name made lowercase.
    may = models.IntegerField(db_column='May', blank=True, null=True)  # Field name made lowercase.
    jun = models.IntegerField(db_column='Jun', blank=True, null=True)  # Field name made lowercase.
    jul = models.IntegerField(db_column='Jul', blank=True, null=True)  # Field name made lowercase.
    ago = models.IntegerField(db_column='Ago', blank=True, null=True)  # Field name made lowercase.
    sep = models.IntegerField(db_column='Sep', blank=True, null=True)  # Field name made lowercase.
    oct = models.IntegerField(db_column='Oct', blank=True, null=True)  # Field name made lowercase.
    nov = models.IntegerField(db_column='Nov', blank=True, null=True)  # Field name made lowercase.
    dic = models.IntegerField(db_column='Dic', blank=True, null=True)  # Field name made lowercase.
    estado = models.BooleanField(db_column='Estado', blank=True, null=True)  # Field name made lowercase.
    codform = models.IntegerField(db_column='CodForm', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tmpgrupoconta'


class Tmpmovd(models.Model):
    idmovcontable_d = models.IntegerField(db_column='IDMovContable_D')  # Field name made lowercase.
    idmovcontables_c = models.IntegerField(db_column='IdMovContables_C', blank=True, null=True)  # Field name made lowercase.
    codunidadeconomica = models.CharField(db_column='CodUnidadEconomica', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nrodocumento = models.CharField(db_column='NroDocumento', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    crp = models.CharField(db_column='CRP', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    codactividad = models.CharField(db_column='CodActividad', max_length=6, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    codpar = models.CharField(db_column='CodPar', max_length=5, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    codsubactividad = models.CharField(db_column='CodSubActividad', max_length=5, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    fechcontable = models.DateTimeField(db_column='FechContable', blank=True, null=True)  # Field name made lowercase.
    codmgc = models.CharField(db_column='CodMGC', max_length=3, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    clasemovimiento = models.CharField(db_column='ClaseMovimiento', max_length=1, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    ctadestino = models.CharField(db_column='CtaDestino', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    codigodocumentoreferencia = models.CharField(db_column='CodigoDocumentoReferencia', max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nrodocreferencia = models.CharField(db_column='NroDocReferencia', max_length=14, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    fechadocreferencia = models.DateTimeField(db_column='FechaDocReferencia', blank=True, null=True)  # Field name made lowercase.
    fechavencimiento = models.DateTimeField(db_column='FechaVencimiento', blank=True, null=True)  # Field name made lowercase.
    codigodocumentofuente = models.CharField(db_column='CodigoDocumentoFuente', max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nrodocumentofuente = models.CharField(db_column='NroDocumentoFuente', max_length=14, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    fechadocumentofuente = models.DateTimeField(db_column='FechaDocumentoFuente', blank=True, null=True)  # Field name made lowercase.
    codigoctabancaria = models.CharField(db_column='CodigoCtaBancaria', max_length=12, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nrooperacion = models.CharField(db_column='NroOperacion', max_length=12, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nrocheque = models.CharField(db_column='NroCheque', max_length=12, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    cuentanaturaleza = models.CharField(db_column='CuentaNaturaleza', max_length=12, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    codcuenta = models.CharField(db_column='CodCuenta', max_length=12, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    centrocosto = models.CharField(db_column='CentroCosto', max_length=15, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    tipomov = models.CharField(db_column='TipoMov', max_length=1, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    glosa = models.CharField(db_column='Glosa', max_length=250, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    orden = models.CharField(db_column='Orden', max_length=250, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    afecto = models.BooleanField(db_column='Afecto', blank=True, null=True)  # Field name made lowercase.
    moneda = models.BigIntegerField(db_column='Moneda', blank=True, null=True)  # Field name made lowercase.
    tipocambio = models.DecimalField(db_column='TipoCambio', max_digits=7, decimal_places=3, blank=True, null=True)  # Field name made lowercase.
    impdebe = models.DecimalField(db_column='impDebe', max_digits=15, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    imphaber = models.DecimalField(db_column='impHaber', max_digits=15, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    impdebedolar = models.DecimalField(db_column='impDebeDolar', max_digits=15, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    imphaberdolar = models.DecimalField(db_column='impHaberDolar', max_digits=15, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    tipoanexo = models.CharField(db_column='TipoAnexo', max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    codanexo = models.CharField(db_column='CodAnexo', max_length=11, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    codpro = models.CharField(db_column='codPro', max_length=11, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    u_codi = models.CharField(max_length=20, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    datusu = models.DateTimeField(db_column='datUsu', blank=True, null=True)  # Field name made lowercase.
    correlativo = models.CharField(db_column='Correlativo', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    estado = models.CharField(max_length=1, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    destino = models.CharField(db_column='Destino', max_length=1, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    anexo = models.CharField(db_column='Anexo', max_length=11, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    gastointpersonal = models.BooleanField(db_column='GastoIntPersonal', blank=True, null=True)  # Field name made lowercase.
    cocach = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    nomanx = models.CharField(max_length=250, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    codin = models.CharField(db_column='codIn', max_length=11, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    tipdca = models.CharField(max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    nrodca = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    reten = models.BooleanField(blank=True, null=True)
    rigv = models.BooleanField(blank=True, null=True)
    corrigv = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    codaduana = models.CharField(db_column='CodAduana', max_length=3, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    fechdua = models.DateTimeField(db_column='FechDUA', blank=True, null=True)  # Field name made lowercase.
    coddua = models.CharField(db_column='CodDUA', max_length=30, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    isc = models.BooleanField(db_column='ISC', blank=True, null=True)  # Field name made lowercase.
    tipooper = models.IntegerField(db_column='tipoOper', blank=True, null=True)  # Field name made lowercase.
    nrodetrac = models.CharField(db_column='NroDetrac', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    fechadetrac = models.DateTimeField(db_column='FechaDetrac', blank=True, null=True)  # Field name made lowercase.
    codigodetraccion = models.CharField(db_column='CodigoDetraccion', max_length=3, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    fecha_refcomprobmodi = models.DateTimeField(db_column='Fecha_RefComprobModi', blank=True, null=True)  # Field name made lowercase.
    tipo_refcomprobmodi = models.CharField(db_column='Tipo_RefComprobModi', max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    serie_refcomprobmodi = models.CharField(db_column='Serie_RefComprobModi', max_length=4, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nro_refcomprobmodi = models.CharField(db_column='Nro_RefComprobModi', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    codigopercepcion = models.CharField(db_column='CodigoPercepcion', max_length=5, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    porcentajepercepcion = models.DecimalField(db_column='PorcentajePercepcion', max_digits=10, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    cuentaabono = models.CharField(db_column='CuentaAbono', max_length=50, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    montoigv = models.DecimalField(db_column='MontoIGV', max_digits=12, decimal_places=3, blank=True, null=True)  # Field name made lowercase.
    numeropercepcion = models.CharField(db_column='NumeroPercepcion', max_length=11, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    fechapercepcion = models.DateTimeField(db_column='FechaPercepcion', blank=True, null=True)  # Field name made lowercase.
    montoretencion4 = models.DecimalField(db_column='MontoRetencion4', max_digits=10, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    tipomediopago = models.CharField(db_column='TipoMedioPago', max_length=3, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    montoisc = models.DecimalField(db_column='MontoISC', max_digits=10, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    montodetraccionivap = models.DecimalField(db_column='MontoDetraccionIvap', max_digits=10, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    montocuentaauxiliar = models.DecimalField(db_column='MontoCuentaAuxiliar', max_digits=10, decimal_places=2, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tmpmovd'


class Tmptesoreria(models.Model):
    anio = models.CharField(max_length=4, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    mes = models.CharField(max_length=9, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    nrodoc = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    fechacontable = models.DateTimeField(blank=True, null=True)
    glosa = models.CharField(max_length=200, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    emitido = models.CharField(max_length=112, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    codigoctabancaria = models.CharField(max_length=12, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    descripcion = models.CharField(max_length=80, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    codigotipodocpago = models.CharField(max_length=4, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    desdocpago = models.CharField(db_column='desDocPago', max_length=20, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nrodocpago = models.CharField(max_length=14, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    monto = models.DecimalField(max_digits=18, decimal_places=2, blank=True, null=True)
    correlativo = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    tipomediopago = models.CharField(max_length=3, db_collation='Modern_Spanish_CI_AS')
    proveedor = models.CharField(max_length=112, db_collation='Modern_Spanish_CI_AS')
    glosadet = models.CharField(db_column='glosaDet', max_length=250, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    flujoefectivo = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS')
    codigodocumentofuente = models.CharField(max_length=2, db_collation='Modern_Spanish_CI_AS')
    desdocfuente = models.CharField(db_column='desDocfuente', max_length=20, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    nrodocumentofuente = models.CharField(max_length=14, db_collation='Modern_Spanish_CI_AS')
    fechadocfuente = models.DateTimeField()
    fechavencimiento = models.DateTimeField()
    codigoctabancariadet = models.CharField(db_column='codigoctabancariaDet', max_length=12, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    codcuenta = models.CharField(max_length=12, db_collation='Modern_Spanish_CI_AS')
    cuentadet = models.CharField(max_length=80, db_collation='Modern_Spanish_CI_AS')
    impdebe = models.DecimalField(max_digits=18, decimal_places=2)
    imphaber = models.DecimalField(max_digits=18, decimal_places=2)

    class Meta:
        managed = False
        db_table = 'tmptesoreria'


class Vtemp(models.Model):
    zona = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    codunidadeconomica = models.CharField(db_column='codUnidadEconomica', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    mes = models.CharField(max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    correlativo = models.CharField(max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    fechaemision = models.CharField(db_column='FechaEmision', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    fechavencimiento = models.CharField(db_column='FechaVencimiento', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    codigodocumento = models.CharField(db_column='CodigoDocumento', max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    serie = models.CharField(db_column='Serie', max_length=4, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    numero = models.CharField(db_column='Numero', max_length=19, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    tipodoc = models.CharField(db_column='TipoDoc', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    ruc = models.CharField(max_length=14, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)
    entidad = models.CharField(db_column='Entidad', max_length=100, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    exportacion = models.DecimalField(db_column='Exportacion', max_digits=38, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    baseimponible = models.DecimalField(db_column='BaseImponible', max_digits=38, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    exonerado = models.DecimalField(db_column='Exonerado', max_digits=38, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    inafecta = models.DecimalField(db_column='Inafecta', max_digits=38, decimal_places=2)  # Field name made lowercase.
    isc = models.DecimalField(db_column='ISC', max_digits=38, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    igv = models.DecimalField(db_column='IGV', max_digits=38, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    otrostributos = models.DecimalField(db_column='OtrosTributos', max_digits=38, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    montoicbper = models.DecimalField(db_column='MontoIcbper', max_digits=38, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    otroscptos = models.DecimalField(db_column='OtrosCptos', max_digits=38, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    total = models.DecimalField(db_column='Total', max_digits=38, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    tipocambio = models.DecimalField(db_column='TipoCambio', max_digits=7, decimal_places=3, blank=True, null=True)  # Field name made lowercase.
    fecha = models.CharField(db_column='Fecha', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    tipo = models.CharField(db_column='Tipo', max_length=2, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    serie2 = models.CharField(db_column='Serie2', max_length=4, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    numero2 = models.CharField(db_column='Numero2', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    voucher = models.CharField(db_column='Voucher', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    baseimponibleiva = models.DecimalField(db_column='BaseImponibleIva', max_digits=38, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    impuestoiva = models.DecimalField(db_column='Impuestoiva', max_digits=38, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    nombredocumento = models.CharField(db_column='NombreDocumento', max_length=60, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.
    nrodocumento = models.CharField(db_column='NroDocumento', max_length=10, db_collation='Modern_Spanish_CI_AS', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'vtemp'

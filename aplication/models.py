from django.db import models

# Create your models here.
class TblTipoEmpresa(models.Model):
    codigo_tipo_empresa = models.AutoField(primary_key=True)  # Field name made lowercase.
    descripcion = models.CharField(db_column='Descripcion', max_length=30, db_collation='Modern_Spanish_CI_AS')  # Field name made lowercase.
    estado = models.BooleanField(db_column='Estado', null=True,blank=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Tbl_Tipo_Empresa'
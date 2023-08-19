# Generated by Django 4.2.3 on 2023-08-18 22:45

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='TblTipoEmpresa',
            fields=[
                ('codigo_tipo_empresa', models.AutoField(primary_key=True, serialize=False)),
                ('descripcion', models.CharField(blank=True, db_collation='Modern_Spanish_CI_AS', db_column='Descripcion', max_length=30, null=True)),
                ('estado', models.BooleanField(blank=True, db_column='Estado', null=True)),
            ],
            options={
                'db_table': 'Tbl_Tipo_Empresa',
                'managed': False,
            },
        ),
    ]
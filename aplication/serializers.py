from rest_framework import serializers
from .models import *


class TblTipoEmpresaSerializer(serializers.ModelSerializer):
    class Meta:
        model = TblTipoEmpresa
        fields = '__all__'


class MovcontablesdnodomiciSerializer(serializers.ModelSerializer):
    class Meta:
        model = Movcontablesdnodomici
        fields = '__all__'
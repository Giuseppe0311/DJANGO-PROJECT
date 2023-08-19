from rest_framework import serializers
from .models import *


class TblTipoEmpresaSerializer(serializers.ModelSerializer):
    class Meta:
        model = TblTipoEmpresa
        fields = '__all__'
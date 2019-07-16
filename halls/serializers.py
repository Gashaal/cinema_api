from halls.models import Hall
from rest_framework import serializers


class HallSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Hall
        fields = ['name', 'rows', 'places']

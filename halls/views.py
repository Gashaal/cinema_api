from rest_framework import viewsets
from halls.models import Hall
from halls.serializers import HallSerializer


class HallViewSet(viewsets.ModelViewSet):
    queryset = Hall.objects.all()
    serializer_class = HallSerializer


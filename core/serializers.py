from .models import *
from rest_framework import serializers

class TipoProductoSerializers(serializers.ModelSerializer):
    class Meta:
        model = TipoProducto
        fields = '__all__'

class MarcaProductoSerializers(serializers.ModelSerializer):
    class Meta:
        model = MarcaProducto
        fields = '__all__'

class ProductoSerializers(serializers.ModelSerializer):
    #AGREGAMOS LAS CLAVES FORÁNEAS
    tipo = TipoProductoSerializers(read_only=True)
    marca = MarcaProductoSerializers(read_only=True)
    class Meta:
        model = Producto
        fields = '__all__'

class MascotaSerializers(serializers.ModelSerializer):
    class Meta:
        model = Mascota
        fields = '__all__'

class UserSerializers(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = '__all__'

class EstadoDespachoSerializers(serializers.ModelSerializer):
    class Meta:
        model = EstadoDespacho
        fields = '__all__'

class DespachoSerializers(serializers.ModelSerializer):
    usuario = UserSerializers(read_only=True)
    estado = EstadoDespachoSerializers(read_only=True)
    class Meta:
        model = DespachoCliente
        fields = '__all__'

class BoletaSerializers(serializers.ModelSerializer):
    usuario = UserSerializers(read_only=True)
    class Meta:
        model = Boleta
        fields = '__all__'

class DetalleBoletaSerializers(serializers.ModelSerializer):
    boleta = BoletaSerializers(read_only=True)
    usuario = UserSerializers(read_only=True)
    producto = ProductoSerializers(read_only=True)
    class Meta:
        model = DetalleBoleta
        fields = '__all__'
#SERIALIZER - VIEWSET - URL




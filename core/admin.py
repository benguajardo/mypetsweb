from django.contrib import admin
from .models import *
# Register your models here.

#Para que en el admin se visualice como tabla
class ProductoAdmin(admin.ModelAdmin):
    list_display = ['nombre','precio','descripcion','tipo','stock','imagen','vigente','destacado','carrusel']
    search_fields = ['nombre']
    list_per_page: 10
    list_filter = ['tipo']
    list_editable = ['tipo','precio','stock','imagen','vigente','destacado']

admin.site.register(TipoProducto)
admin.site.register(MarcaProducto)
admin.site.register(Mascota)
admin.site.register(Producto, ProductoAdmin)
admin.site.register(CarritoCliente)
admin.site.register(CarritoProducto)
admin.site.register(Boleta)
admin.site.register(DetalleBoleta)
admin.site.register(EstadoDespacho)
admin.site.register(DespachoCliente)

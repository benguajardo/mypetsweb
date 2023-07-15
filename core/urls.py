from django.urls import path, include
from .views import *
from rest_framework import routers

from core import views

router = routers.DefaultRouter()
router.register('productos', ProductoViewset)
router.register('tipoproductos', TipoProductoViewset)
router.register('marcaproductos', MarcaViewset)
router.register('mascotaproductos', MascotaViewset)
router.register('usuarios', UserViewset)
router.register('estadodespachos', EstadoDespachoViewset)
router.register('despachos', DespachoViewset)
router.register('boletas', BoletaViewset)
router.register('detalleboletas', DetalleBoletaViewset)

urlpatterns = [
    # API
    path('',index, name="index"),
    path('shop/',shop, name="shop"),
    
    path('base/',base, name="base"),
    path('contact/',contact, name="contact"),
    path('about/',about, name="about"),
    path('api/', include(router.urls)),
    path('administracion/', administracion, name="administracion"),
    path('miscompras/', miscompras, name="miscompras"),
    
    path('registration/login.html',login, name="login"),
    path('register.html',register, name="register"),

    # path('productos.html', productos, name="productos"),
    # path('productosapi/', productosapi, name="productosapi"),
    # path('descripcion.html', descripcion, name="descripcion"),
    # path('registration/login.html',login, name="login"),
    # path('perfilusuario.html',perfilusuario,name="perfilusuario"),
    # path('boleta.html',boleta,name="boleta"),
    path('suscripcion.html',suscripcion,name="suscripcion"),
    
    path('activar_suscripcion/',activar_suscripcion,name="activar_suscripcion"),
    path('desactivar_suscripcion/',desactivar_suscripcion,name="desactivar_suscripcion"),

    path('carrito/',carrito,name="carrito"),
    path('agregar_al_carrito/<id>/', agregar_al_carrito, name='agregar_al_carrito'),
    path('restar_carrito/<id>/', restar_carrito, name='restar_carrito'),
    path('borrar_carrito/<id>/', borrar_carrito, name='borrar_carrito'),

    path('agregar_productos_a_boleta/', agregar_productos_a_boleta, name='agregar_productos_a_boleta'),
    # path('crear_despacho_cliente/', crear_despacho_cliente, name='crear_despacho_cliente'),

    path('agregarprod/',agregarprod,name="agregarprod"),
    path('modificarprod/<id>',modificarprod,name="modificarprod"),
    path('delete_producto/<id>/', delete_producto, name="delete_producto"),
    
    path('modificar_usuario/<id>/', modificar_usuario, name="modificar_usuario"),
    path('modificardespacho/<id>/', modificardespacho, name="modificardespacho"),
]
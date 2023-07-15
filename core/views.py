from django.http import HttpResponseRedirect
from django.shortcuts import render, redirect, get_object_or_404

from core import user
from .models import *
from .forms import *
from django.contrib import messages
from django.core.paginator import Paginator
from django.contrib.auth.decorators import login_required, user_passes_test
from django.contrib.auth import logout, get_user_model
from rest_framework import viewsets
from .serializers import *
import requests

#FUNCION PARA VALIDAR GRUPO DEL USER
def grupo_requerido(nombre_grupo):
    def decorator(view_fuc):
        @user_passes_test(lambda user: user.groups.filter(name=nombre_grupo).exists())
        def wrapper(request, *arg, **kwargs):
            return view_fuc(request, *arg, **kwargs)
        return wrapper
    return decorator

def about(request):
    respuesta = requests.get('http://127.0.0.1:8000/api/marcaproductos/')
    marca = respuesta.json()
    data = {
        'listamarcas' : marca,
    }
    return render(request,'core/about.html',data)

def contact(request):
    return render(request, 'core/contact.html')



@login_required
@grupo_requerido('Administrador')
def administracion(request):
    respuesta = requests.get('http://127.0.0.1:8000/api/productos/')
    respuesta2 = requests.get('http://127.0.0.1:8000/api/usuarios/')
    respuesta3 = requests.get('http://127.0.0.1:8000/api/despachos/')
    productos = respuesta.json()
    usuarios = respuesta2.json()
    despachos = respuesta3.json()
    data = {
        'listaproductos' : productos,
        'listausuarios' : usuarios,
        'listadespachos' : despachos,
    }
    return render(request,'core/administracion.html',data)

def about(request):
    return render(request, 'core/about.html')

def index(request):
    respuesta = requests.get('http://127.0.0.1:8000/api/productos/')
    productos = respuesta.json()
    data = {
        'listaproductos' : productos,
    }
    return render(request,'core/index.html',data)

def base(request):
    respuesta = requests.get('http://127.0.0.1:8000/api/tipoproductos/')
    tipoproductos = respuesta.json()
    data = {
        'listatipoproductos' : tipoproductos,
    }
    return render(request,'core/base.html',data)


def shop(request):
    respuesta = requests.get('http://127.0.0.1:8000/api/productos/')
    
    productos = respuesta.json()
    
    #ESTO DEBE VARIAR DEPENDIENDO DEL PAGO
    
    data = {
        'listaproductos' : productos,
        
    }
    return render(request, 'core/shop.html',data)

@grupo_requerido('Cliente')
def suscripcion(request):
    return render(request, 'core/suscripcion.html')

@grupo_requerido('Cliente')
def activar_suscripcion(request):
    usuario = request.user
    usuario.suscrito = True
    usuario.save()
    return render(request, 'core/suscripcion.html')

@login_required
@grupo_requerido('Cliente')
def desactivar_suscripcion(request):
    usuario = request.user
    usuario.suscrito = False
    usuario.save()
    return render(request, 'core/suscripcion.html')

def login(request):
    return render(request, 'registration/login.html')

@login_required
def salir(request):
    logout(request)
    return redirect, ('core/')

#VISTAS DEL CARRO
@login_required
@grupo_requerido('Cliente')
def carrito(request):
    try:
        respuesta = requests.get('http://127.0.0.1:8000/api/productos/')
        productos = respuesta.json()
        carritocli = CarritoCliente.objects.get(usuario = request.user)
        productos_carrito = carritocli.items.all()
        precio_total = carritocli.calcular_total()
        precio_desc = carritocli.calcular_desc()
        precio = CarritoCliente.calcular_total(carritocli)
        
        respuesta2 = requests.get('https://mindicador.cl/api/dolar')
        monedas = respuesta2.json()
        valor_usd = monedas['serie'][0]['valor']
        valor_final = precio / valor_usd
        data = {
            'productos': productos_carrito,
            'total': precio_total,
            'descuento' : precio_desc,  
            'listaproductos' : productos,
            'usuarios' : carritocli,
            'precio' : precio,
            'valor' : round(valor_final),
        }
        return render(request, 'core/carrito.html',data)
    except CarritoCliente.DoesNotExist:
        messages.warning(request, 'Debes añadir un producto primero a tu carrito.')
    return render(request, 'core/index.html')

@login_required
@grupo_requerido('Cliente')
def agregar_al_carrito(request,id):
    producto = Producto.objects.get(id=id)
    carritocli, created = CarritoCliente.objects.get_or_create(usuario=request.user)
    carritoprod, item_created = CarritoProducto.objects.get_or_create(producto=producto, usuario=request.user)
    if not item_created:
        if producto.stock == 0:
            messages.warning(request, 'No hay más stock disponible.')
            return redirect(to='carrito')
        else:
            carritoprod.cantidad +=1
            producto.stock -= 1
            producto.save()
            carritoprod.save()
    else:
        carritocli.items.add(carritoprod)
        producto.stock -= 1
        producto.save()
        carritocli.save()
    return redirect(to='carrito')

@login_required
@grupo_requerido('Cliente')
def restar_carrito(request, id):
    producto = Producto.objects.get(id=id)
    carritocli = CarritoCliente.objects.get(usuario=request.user)
    carritoprod = carritocli.items.get(producto=producto)
    
    if carritoprod.cantidad == 1:
        carritocli.items.remove(carritoprod)
        producto.stock += 1
        producto.save()
        carritoprod.delete()
    else:
        carritoprod.cantidad -= 1
        producto.stock += 1
        producto.save()
        carritoprod.save()
    return redirect(to='carrito')

@login_required
@grupo_requerido('Cliente')
def borrar_carrito(request, id):
    producto = Producto.objects.get(id=id)
    carritocli = CarritoCliente.objects.get(usuario=request.user)
    carritoprod = carritocli.items.get(producto=producto)
    producto.stock += carritoprod.cantidad
    producto.save()
    carritocli.items.remove(carritoprod)
    carritoprod.delete()
    return redirect(to='carrito')

#CARRITO
@login_required
@grupo_requerido('Cliente')
def agregarprod(request):
    data = {
        'form' : ProductoForm()
    }
    if request.method == 'POST': 
        formulario = ProductoForm(request.POST, files=request.FILES)
        if formulario.is_valid():
            formulario.save() #COMMIT
            messages.success(request, "Producto almacenado correctamente")
            return redirect(to=administracion)
    return render(request,'core/agregarprod.html',data)

@login_required
@grupo_requerido('Administrador')
def modificarprod(request,id):
    producto = Producto.objects.get(id=id)
    data = {
        'form' : ProductoForm(instance=producto)
    }
    if request.method =='POST':
        formulario = ProductoForm(data=request.POST, instance=producto, files=request.FILES) 
        if formulario.is_valid():
            formulario.save() 
            #data['msj'] = 'Producto guardado correctamente!'
            messages.success(request, "Producto actualizado correctamente")
            return redirect('administracion')
        data['form'] = formulario
    return render(request, 'core/modificarprod.html',data)

@login_required
@grupo_requerido('Administrador')
def delete_producto(request,id):
    producto = Producto.objects.get(id=id) # BUSCAMOS UN PRODUCTO POR SU ID
    producto.delete()
    return redirect(to="administracion")
                                        #ESTO DEBERIA IR A USER

@login_required
@grupo_requerido('Administrador')
def modificardespacho(request,id):
    despacho = DespachoCliente.objects.get(id=id)
    data = {
        'form' : DespachoForm(instance= despacho)
    }
    if request.method == 'POST':
        formulario = DespachoForm(data=request.POST, instance=despacho, files = request.FILES)
        if formulario.is_valid():
            formulario.save()
            messages.success(request, "Despacho actualizado")
            return redirect('administracion')
        data['form'] = formulario
    return render(request, 'core/modificardespacho.html', data)

@login_required
@grupo_requerido('Administrador')
def modificar_usuario(request,id):
    usuario = User.objects.get(id=id)
    data= {
        'form' : UserForm(instance=usuario)
    }
    if request.method == 'POST':
        formulario = UserForm(data=request.POST, instance=usuario, files= request.FILES)
        if formulario.is_valid():
            formulario.save()
            messages.success(request, "Usuario modificado")
            return redirect('administracion')
        data['form'] = formulario
    return render(request, 'core/modificar_usuario.html', data)

@login_required
@grupo_requerido('cliente')
def miscompras(request):
    respuesta = requests.get('http://127.0.0.1:8000/api/despachos/')
    respuesta2 = requests.get('http://127.0.0.1:8000/api/boletas/')
    respuesta3 = requests.get('http://127.0.0.1:8000/api/detalleboletas/')
    respuesta4 = requests.get('http://127.0.0.1:8000/api/productos/')

    despachos = respuesta.json()
    boletas = respuesta2.json()
    detalleboletas = respuesta3.json()
    productos = respuesta4.json()
    data = {
        'listadespacho' : despachos,
        'listaboleta' : boletas,
        'listadetalleboleta' : detalleboletas,
        'listaproducto' : productos,
    }
    return render(request, 'core/miscompras.html',data)

def register(request):
    form = RegisterForm()
    if request.method == 'POST':
        form = RegisterForm(request.POST)
        if form.is_valid():
             form.save()
             return redirect("index")
    return render(request, 'registration/register.html', { 'form': form })

# Boleta
@login_required
@grupo_requerido('cliente')
def agregar_productos_a_boleta(request):
    total = 0
    try:
        carrito = CarritoCliente.objects.get(usuario=request.user)
        boleta = Boleta.objects.create(usuario=request.user)

        for item in carrito.items.all():
            cantidad = item.cantidad
            boleta.productos.add(item.producto, through_defaults={'cantidad': cantidad})

        descuento = carrito.calcular_desc()
        total = carrito.calcular_total() - descuento
        boleta.total = total

        boleta.save()

        despacho = DespachoCliente.objects.create(usuario=request.user, numboleta=boleta)

        carrito.items.clear()
        carrito_productos = CarritoProducto.objects.filter(usuario=request.user)
        carrito_productos.delete()

        mensaje = "Los productos se han agregado correctamente a la boleta."
    except CarritoCliente.DoesNotExist:
        mensaje = "El carrito de compras no existe para este usuario."

    return render(request, 'core/index.html', {'mensaje': mensaje})

def donacion(request):
    if request.method == 'POST':
        donacion = request.POST.get('donacion')
    return render(request, 'core/suscripcion.html', donacion)



class ProductoViewset(viewsets.ModelViewSet):
    queryset = Producto.objects.all()
    serializer_class = ProductoSerializers

class TipoProductoViewset(viewsets.ModelViewSet):
    queryset = TipoProducto.objects.all()
    serializer_class = TipoProductoSerializers

class MarcaViewset(viewsets.ModelViewSet):
    queryset= MarcaProducto.objects.all()
    serializer_class = MarcaProductoSerializers

class MascotaViewset(viewsets.ModelViewSet):
    queryset= Mascota.objects.all()
    serializer_class = MascotaSerializers

class UserViewset(viewsets.ModelViewSet):
    queryset= User.objects.all()
    serializer_class = UserSerializers

class EstadoDespachoViewset(viewsets.ModelViewSet):
    queryset= EstadoDespacho.objects.all()
    serializer_class = EstadoDespachoSerializers

class DespachoViewset(viewsets.ModelViewSet):
    queryset= DespachoCliente.objects.all()
    serializer_class = DespachoSerializers

class BoletaViewset(viewsets.ModelViewSet):
    queryset= Boleta.objects.all()
    serializer_class = BoletaSerializers

class DetalleBoletaViewset(viewsets.ModelViewSet):
    queryset= DetalleBoleta.objects.all()
    serializer_class = DetalleBoletaSerializers
from datetime import timezone
from django.conf import settings
from django.db import models
from .user.models import User
from django.contrib.auth.decorators import login_required, user_passes_test
from django.shortcuts import render, redirect
# Create your models here.

# TABLA TIPO_PRODUCTO
class TipoProducto(models.Model):
    descripcion = models.CharField(max_length=50)

    def  __str__(self):
        return self.descripcion
        
class MarcaProducto(models.Model):
    descripcion = models.CharField(max_length=15)
    imagen = models.ImageField(null=True,blank=True)

    def  __str__(self):
        return self.descripcion
    
class Mascota(models.Model):
    descripcion = models.CharField(max_length=15)

    def  __str__(self):
        return self.descripcion

# TABLA PRODUCTO
class Producto(models.Model):
    nombre = models.CharField(max_length=50)
    descripcion = models.CharField(max_length=90)
    precio = models.PositiveIntegerField(default=5990)
    stock = models.PositiveIntegerField(default=0)
    tipo = models.ForeignKey(TipoProducto, on_delete=models.CASCADE)
    marca = models.ForeignKey(MarcaProducto, on_delete=models.CASCADE)
    imagen = models.ImageField(null=True,blank=True)
    vigente = models.BooleanField(default=False,blank=True)
    mascota = models.ForeignKey(Mascota, on_delete=models.CASCADE)
    destacado = models.BooleanField(default=False,blank=True)
    carrusel = models.BooleanField(default=False,blank=True)
    def __str__(self):
        return self.nombre
    
class Boleta(models.Model):
    usuario = models.ForeignKey(User, on_delete=models.CASCADE)
    fecha = models.DateField(auto_now=True)
    hora = models.TimeField(auto_now=True)
    productos = models.ManyToManyField(Producto, through='DetalleBoleta')
    total = models.IntegerField(null=True)
    
    def __str__(self):
        return f'Boleta #{self.pk} - {self.usuario.username}'

class DetalleBoleta(models.Model):
    boleta = models.ForeignKey(Boleta, on_delete=models.CASCADE)
    producto = models.ForeignKey(Producto, on_delete=models.CASCADE)
    cantidad = models.PositiveIntegerField(default=1)
    def __str__(self):
        return f'DetBoleta #{self.boleta.id} - {self.producto.nombre} - {self.cantidad}' 


class CarritoProducto(models.Model):
    producto = models.ForeignKey(Producto, on_delete=models.CASCADE)
    usuario = models.ForeignKey(User, on_delete=models.CASCADE)
    cantidad = models.PositiveIntegerField(default=1)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    def subtotal(self):
        return self.producto.precio * self.cantidad

class CarritoCliente(models.Model):
    usuario = models.OneToOneField(User, on_delete=models.CASCADE)
    items = models.ManyToManyField(CarritoProducto)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    def calcular_desc(self):
        acumulador = 0
        descuento = 0
        for aux in self.items.all():
            if aux.usuario.suscrito == True:
                acumulador += aux.subtotal()
                descuento = round(acumulador * 0.05)
            else:
                acumulador += aux.subtotal()
                descuento = 0
        return descuento
    def calcular_total(self):
        acumulador = 0
        total = 0
        for aux in self.items.all():
            if aux.usuario.suscrito == True:
                acumulador += aux.subtotal()
                total = round(acumulador * 0.95)
            else:
                acumulador += aux.subtotal()
                total = acumulador
        return total

    
class EstadoDespacho(models.Model):
    descripcion = models.CharField(max_length=11)
    def __str__(self):
        return self.descripcion
    
class DespachoCliente(models.Model):
    usuario = models.ForeignKey(User, on_delete=models.CASCADE)
    estado = models.ForeignKey(EstadoDespacho, on_delete=models.CASCADE, default = 1)
    numboleta = models.ForeignKey(Boleta, on_delete=models.CASCADE)
    def __int__(self):
        return self.numboleta

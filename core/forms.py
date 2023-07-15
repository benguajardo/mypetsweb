from django import forms
from django.forms import ModelForm
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import Group
from .models import *

class ProductoForm(ModelForm):
    nombre = forms.CharField(widget=forms.TextInput(attrs={"placeholder":"Ingrese Nombre:"}))
    precio = forms.IntegerField(min_value=0,widget=forms.NumberInput(attrs={"placeholder":"Ingrese Precio:"}))
    stock = forms.IntegerField(min_value=0,widget=forms.NumberInput(attrs={"placeholder":"Ingrese Stock:"}))
    descripcion = forms.CharField(widget=forms.TextInput(attrs={"placeholder":"Ingrese Descripcion:"}))
    vigente = forms.BooleanField(required=False)
    destacado = forms.BooleanField(required=False)
    carrusel = forms.BooleanField(required=False)
    class Meta:
        model = Producto
        fields = '__all__'

class TipoProductoForm(ModelForm):
    class Meta:
        model = TipoProducto
        fields = '__all__'


class RegisterForm(UserCreationForm):
    class Meta:
        model=User
        fields = ['username','nombre','email','direccion','password1','password2']
    def save(self,commit=True):
        user=super().save(commit=False)
        if commit:
            user.save()
            grupo = self.cleaned_data.get('grupo','cliente')
            group = Group.objects.get(name=grupo)
            user.groups.add(group)
        return user

class Pago(ModelForm):
    class Meta:
        fields = '__all__'

class LoginForm(ModelForm):
    usuario = forms.CharField(widget=forms.TextInput(attrs={"placeholder":"Ingrese usuario:"}))
    contrasena = forms.CharField(widget=forms.TextInput(attrs={"placeholder":"Ingrese contraseña:"}))
    class Meta:
        model = User
        fields = ['usuario','contrasena']

class UserForm(ModelForm):
    class Meta:
        model = User
        fields = ['nombre','direccion','email']

class DespachoForm(ModelForm):
    class Meta:
        model = DespachoCliente
        fields = ['estado']

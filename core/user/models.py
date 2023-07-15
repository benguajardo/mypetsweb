from django.contrib.auth.models import AbstractUser
from django.db import models

class User(AbstractUser):
    nombre = models.CharField(max_length=100, blank=False)
    direccion = models.CharField(max_length=150, blank=False)
    suscrito = models.BooleanField(default=False, blank=True)
    imagen = models.ImageField(null=True,blank=True)
    def __str__(self):
        return self.nombre

from django.contrib.auth.models import AbstractUser
from django.core.exceptions import ValidationError
from django.db import models

# Create your models here.

def validar_rut(rut):
    """
    Valida que el RUT sea correcto.
    """

    """
    rut = rut.upper().replace(".", "").replace("-", "")
    try:
        cuerpo, verificador = rut[:-1], rut[-1]
        suma = 0
        multiplicador = 2
        for digito in reversed(cuerpo):
            suma += int(digito) * multiplicador
            multiplicador = 9 if multiplicador == 7 else multiplicador + 1
        dv_calculado = 11 - (suma % 11)
        dv_calculado = '0' if dv_calculado == 11 else 'K' if dv_calculado == 10 else str(dv_calculado)
        if dv_calculado != verificador:
            raise ValidationError("El RUT ingresado no es válido.")
    except Exception:
        raise ValidationError("El RUT ingresado no es válido.")
        """

class Usuario(models.Model):
    primer_nombre = models.CharField(max_length=50)
    segundo_nombre = models.CharField(max_length=50, blank=True, null=True)
    rut = models.CharField(max_length=12, unique=True, validators=[validar_rut])
    email = models.EmailField(unique=True)
    birthdate = models.DateField()
    password = models.CharField(max_length=128)
    confirm_password = models.CharField(max_length=128)


class Producto(models.Model):
    nombre_producto = models.CharField(max_length=200)
    precio_producto = models.DecimalField(max_digits=10, decimal_places=0)
    marca_producto = models.CharField(max_length=100)
    imagen = models.ImageField(upload_to='productos/')
    descripcion = models.TextField(default="Sin descripción", null=True, blank=True ) 

    categoria = models.CharField(
        max_length=50, 
        choices=[
            ('procesador', 'Procesador'),
            ('tarjeta_grafica', 'Tarjeta Gráfica'),
            ('memoria_ram', 'Memoria RAM'),
            ('almacenamiento', 'Almacenamiento'),
            ('placamadre', 'Placa Madre'),
            ('fuentepoder', 'Fuente de poder'),
            ('pantalla', 'Pantalla'),
        ]                           
    )

    def __str__(self):
        return f"{self.nombre_producto} ({self.categoria})"

class Procesador(Producto):
    nucleos = models.PositiveIntegerField()
    frecuencia_base = models.DecimalField(max_digits=5, decimal_places=2)

class TarjetaGrafica(Producto):
    memoria_grafica = models.CharField(
        max_length=50,
        choices=[
            ('Null', 'Sin especificar'),
            ('4GB', '4GB'),
            ('6GB', '6GB'),
            ('8GB', '8GB'),
            ('12GB', '12GB'),
            ('14GB', '14GB'),
            ('16GB', '16GB'),
            ('20GB', '20GB'),
            ('24GB', '24GB'),
        ],
        default='null'
    )
class MemoriaRAM(Producto):   
    capacidad_ram = models.PositiveIntegerField()

    tipo_memoria = models.CharField(
        max_length=50,
        choices=[
            ('Null', 'Sin especificar'),
            ('DRR4', 'DRR4'),
            ('DRR5', 'DRR5'),
        ],
        default='null'
    ) 

class Almacenamiento(Producto):
    capacidad_almacenamiento = models.CharField(
        max_length=50,
        choices=[
            ('Null', 'Sin especificar'),
            ('16GB', '16GB'),
            ('128GB', '128GB'),
            ('256GB', '256GB'),
            ('500GB', '500GB'),
            ('1TB', '1TB'),
            ('2TB', '2TB'),
        ],
        default='null'
    )
    tipo_almacenamiento = models.CharField(
        max_length=50,
        choices=[
            ('Null', 'Sin especificar'),
            ('SSD', 'SSD'),
            ('HDD', 'HDD'),
            ('M2NVMe', 'M.2NVMe'),
        ],
        default='Null'
    )

class PlacaMadre(Producto):
    socket = models.CharField(
        max_length=50,
        choices=[
            ('Null', 'Sin especificar'),
            ('AM4', 'AM4'),
            ('AM5', 'AM5'),
            ('Inter', 'Intel'),
        ],
        default='Null'
    )

    tipo_memoria = models.CharField(
        max_length=50,
        choices=[
            ('Null', 'Sin especificar'),
            ('DRR4', 'DRR4'),
            ('DRR5', 'DRR5'),
        ],
        default='Null'
    )

class Fuente(Producto):
    potencia = models.CharField(
        max_length=50,
        choices=[
            ('Null', 'Sin especificar'),
            ('500W', '500 Watts'),
            ('550W', '550 Watts'),
            ('600W', '600 Watts'),
            ('700W', '700 Watts'),
            ('800W', '800 Watts'),
            ('1000W', '1000 Watts'),
        ],
        default='Null'
    )

    certificacion = models.CharField(
        max_length=50,
        choices=[
            ('Null', 'Sin especificar'),
            ('white', '80 PLUS White'),
            ('silver', '80 PLUS Silver'),
            ('gold', '80 PLUS Gold'),
            ('platinum', '80 PLUS Platinum'),
            ('titanium', '80 PLUS Titanium'),
        ],
        default='Null'
    )

    modularidad = models.CharField(
        max_length=50,
        choices=[
            ('Null', 'Sin especificar'),
            ('modular', 'Modular'),
            ('no_modular', 'No Modular'),
            ('semi_modular', 'Semi-Modular'),
        ],
        default='Null'
    )

class Pantalla(Producto):
    tamaño_pantalla = models.CharField(
        max_length=50,
        choices=[
            ('Null', 'Sin especificar'),
            ('24', '24 Pulgadas'),
            ('27', '27 Pulgadas'),
            ('32', '32 Pulgadas'),
            ('38', '38 Pulgadas'),
        ],
        default='Null'
    )

    resolucion = models.CharField(
        max_length=50,
        choices=[
            ('Null', 'Sin especificar'),
            ('1920x1080', '1920x1080'),
            ('2560x1080', '2560x1080'),
        ],
        default='Null'
    )

    frecuencia = models.CharField(
        max_length=50,
        choices=[
            ('Null', 'Sin especificar'),
            ('60Hz', '60Hz'),
            ('120Hz', '120Hz'),
            ('144Hz', '144Hz'),
            ('160Hz', '160Hz'),
            ('200Hz', '200Hz'),
            ('240Hz', '240Hz'),
            ('260Hz', '260Hz'),
        ],
        default='Null'
    )

    tipo_panel = models.CharField(
        max_length=50,
        choices=[
            ('Null', 'Sin especificar'),
            ('IPS', 'IPS'),
            ('VA', 'VA'),
            ('TN', 'TN'),
        ],
        default='Null'
    )

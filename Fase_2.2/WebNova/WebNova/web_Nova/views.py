from django.shortcuts import render
from django.shortcuts import render, get_object_or_404, redirect
from django.http import JsonResponse
from . forms import UsuarioForm
from . models import Usuario, Producto, Procesador, Fuente, TarjetaGrafica, MemoriaRAM, Almacenamiento, PlacaMadre, Pantalla


from django.contrib.auth.models import User
from django.contrib.auth import authenticate,logout,login as login_aut
from django.contrib.auth.decorators import login_required

# Create your views here.

def index(request, producto_id=None):
    if producto_id:
        # Mostrar detalles de un producto específico
        producto = get_object_or_404(Producto, id=producto_id)
        return render(request, 'core/productocard.html', {
            'producto': producto
        })
    else:
        # Mostrar la página principal con productos aleatorios
        productos_aleatorios = Producto.objects.order_by('?')[:10]
        return render(request, 'core/index.html', {
            'productos_aleatorios': productos_aleatorios
        })

def index2(request):
    return render(request, 'core/index.html')


@login_required
def Perfil(request):
    return render(request, 'core/Perfil.html', {'user': request.user})

def productocard(request, producto_id):
    producto = get_object_or_404(Producto, id=producto_id)

    productos_aleatorios = Producto.objects.exclude(id=producto_id).order_by('?')[:10]
    return render(request, 'core/productocard.html', {
        'producto': producto,
        'productos_aleatorios': productos_aleatorios})

def carrito(request):
    return render(request, 'core/carrito.html')

def productosexpo(request):
    productos = Producto.objects.all()

    procesador = Procesador.objects.filter(categoria='procesador')
    tarjeta = TarjetaGrafica.objects.filter(categoria='tarjeta_grafica')
    memoriaram = MemoriaRAM.objects.filter(categoria='memoria_ram')
    almacenamiento = Almacenamiento.objects.filter(categoria='almacenamiento')    
    placamadre = PlacaMadre.objects.filter(categoria='placamadre')
    fuente = Fuente.objects.filter(categoria='fuentepoder')
    pantalla = Pantalla.objects.filter(categoria='pantalla')

    return render(request, 'core/productosexpo.html', {
        'productos': productos, 
        'procesador': procesador, 
        'memoriaram' : memoriaram,
        'tarjeta': tarjeta, 
        'almacenamiento': almacenamiento,        
        'placamadre': placamadre,
        'fuente': fuente,
        'pantalla': pantalla})

# Eliminar/Filtrar Producto

def listar_productos(request):
    # Obtener el valor de la categoría seleccionada en el filtro
    categoria_filtro = request.GET.get('categoria', '')
    
    # Filtrar productos según la categoría, si se ha seleccionado alguna
    if categoria_filtro:
        productos = Producto.objects.filter(categoria=categoria_filtro)
    else:
        productos = Producto.objects.all()  # Si no hay filtro, mostrar todos
    
    return render(request, 'admin/viewProduct.html', {'productos': productos})

def eliminar_producto(request, producto_id):
    producto = get_object_or_404(Producto, id=producto_id)
    producto.delete()
    return redirect('listar_productos')


def listar_productos_expo(request):
    # Obtener el valor de la categoría seleccionada en el filtro
    categoria_filtro = request.GET.get('categoria', '')
    
    # Filtrar productos según la categoría, si se ha seleccionado alguna
    if categoria_filtro:
        productos = Producto.objects.filter(categoria=categoria_filtro)
    else:
        productos = Producto.objects.all()  # Si no hay filtro, mostrar todos
    
    # Pasar los productos a la plantilla 'core/productosexpo.html'
    return render(request, 'core/productosexpo.html', {'productos': productos})


# Registros

def registro(request):
    
    if request.POST:
        primer_nombre = request.POST.get("primer_nombre")
        segundo_nombre = request.POST.get("segundo_nombre")
        rut = request.POST.get("rut")
        email = request.POST.get("email")
        birthdate = request.POST.get("birthdate")
        password1 = request.POST.get("password")
        password2 = request.POST.get("confirm_password")

        try:
            u=User.objects.get(username=primer_nombre)
            mensaje="Usuario Existente"
            return render(request, 'core/Registro.html', {'msg': mensaje})
        except:
            if password1!=password2:
                mensaje="Contraseña no Coincide"
                return render(request, 'core/Registro.html', { 'msg': mensaje})
            u = User()
            u.username=primer_nombre
            u.last_name=segundo_nombre
            u.email=email
            u.rut=rut 
            u.date_joined=birthdate
            u.set_password(password1)
            u.save()
            mensaje="Registro Completo UwU"
            us = authenticate(request, username=primer_nombre, password=password1)
            login_aut(request, us)
            return render(request, 'core/index.html', {'user' : us})    
    return render(request, 'core/Registro.html')

@login_required
def productoReg(request):
    if request.method == 'POST':
        nombre_producto = request.POST.get('nombre_producto')
        precio_producto = request.POST.get('precio_producto')
        marca_producto = request.POST.get('marca_producto')
        imagen = request.POST.get('imagen')
        descripcion = request.POST.get('descripcion')
        categoria = request.POST.get('categoria')

        producto = Producto.objects.create(
            nombre_producto=nombre_producto,
            precio_producto=precio_producto,
            marca_producto=marca_producto,
            imagen=imagen,
            descripcion=descripcion,
            categoria=categoria
        )

        if categoria == 'procesador':
            nucleos = request.POST.get('nucleos')
            frecuencia_base = request.POST.get('frecuencia_base')
        elif categoria == 'tarjeta_grafica': 
            memoria_grafica = request.POST.get('memoria_grafica')
        elif categoria == 'memoria_ram':
            capacidad_ram = request.POST.get('capacidad_ram')
            tipo_memoria = request.POST.get('tipo_memoria')
        elif categoria == 'almacenamiento':
            capacidad_almacenamiento = request.POST.get('capacidad_almacenamiento')
            tipo_almacenamiento = request.POST.get('tipo_almacenamiento')
        elif categoria == 'placamadre':
            socket = request.POST.get('socket')
            tipo_memoria = request.POST.get('tipo_memoria')
        elif categoria == 'fuentepoder':
            potencia = request.POST.get('potencia')
            certificacion = request.POST.get('certificacion')
            modularidad = request.POST.get('modularidad')
        elif categoria == 'pantalla':
            tamaño_pantalla = request.POST.get('tamaño_pantalla')
            resolucion = request.POST.get('resolucion')
            frecuencia = request.POST.get('frecuencia')
            tipo_panel = request.POST.get('tipo_panel')
        return render(request, 'admin/ProductoReg.html', {'msg' : 'Producto Registrado con exito'})     

    return render(request, 'admin/ProductoReg.html')


@login_required
def viewProduct(request):
    productos = Producto.objects.all()

    if request.method == 'POST':
        if 'delete' in request.POST:
            producto_id = request.POST.get('delete')
            producto = get_object_or_404(Producto, id=producto_id)
            producto.delete()
            return redirect('view_product')  # Redirigir después de eliminar

        elif 'edit' in request.POST:
            producto_id = request.POST.get('edit')
            return redirect('edit_product', producto_id=producto_id)

    return render(request, 'admin/viewProduct.html', {
        'productos': productos
    })  


# Verificación de Roles

@login_required
def perfil(request):
    # Si el usuario es administrador o staff
    is_admin_or_staff = request.user.is_staff
    return render(request, 'core/perfil.html', {'is_admin_or_staff': is_admin_or_staff})



# Inicio y cierre de sesion

def logout_vistas(request):
    logout(request)
    return render(request, 'core/Login.html')

def login(request):
    if request.POST:
        usuario = request.POST.get("user")
        password = request.POST.get("password")

        us = authenticate(request, username=usuario, password=password)
        if us is not None and us.is_active:
            login_aut(request, us)
            return render(request, 'core/Perfil.html', {'user' : us} )
        else:
            return render(request, 'core/Login.html', {'msg' : 'Usuario / Contreseña incorrecta'})
    return render(request, 'core/Login.html' )
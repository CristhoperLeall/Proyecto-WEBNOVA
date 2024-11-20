from django.contrib import admin
from django.urls import path,include
from . import views
from django.conf import settings
from django.conf.urls.static import static
from .views import index, index2, login, productocard, productosexpo, carrito, Perfil, registro, productoReg, logout_vistas, viewProduct


urlpatterns = [
    path('', index,name= 'INDEX'),
    path('productocard/<int:producto_id>/', productocard, name='producto_detalle'),

    path('login/',login,name='log'),
    path('logout_vistas/', logout_vistas,name='LOGOUT'),

    path('productocard/<int:producto_id>/',productocard,name='propcard'),
    path('productosexpo/',productosexpo,name='productoex'),


    path('carrito/',carrito,name='card'),
    


    path('Perfil/',Perfil,name='user_profile'),
    path('Registro/',registro,name='registrop'),


    path('ViewProduct/',viewProduct, name='registrop3'),
    path('ProductoReg/',productoReg,name='registrop2'),

    path('admin/', admin.site.urls),

    path('productos/', views.listar_productos, name='listar_productos'),
    path('productosexpo/', views.listar_productos_expo, name='listar_productos_expo'),
    path('producto/eliminar/<int:producto_id>/', views.eliminar_producto, name='eliminar_producto'),
]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

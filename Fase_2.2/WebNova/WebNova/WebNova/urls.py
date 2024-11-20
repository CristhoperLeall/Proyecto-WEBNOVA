from django.contrib import admin
from django.urls import path,include

from django.conf.urls.static import static

from django.conf import settings

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('web_Nova.urls')),
]

admin.site.site_header="Adminitracion de WebNova en Django"
admin.site.site_title="Modulos disponibles"
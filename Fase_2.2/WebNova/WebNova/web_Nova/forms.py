from django import forms
from . models import Usuario

class UsuarioForm(forms.ModelForm):
    class meta:
        model = Usuario
        fields = [
            'primer_nombre',
            'segundo_nombre',
            'rut',
            'email',
            'birthdate',
            'password',
        ]
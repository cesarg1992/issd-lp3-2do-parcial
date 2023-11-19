# issd-lp3-2do-parcial
A) Formulario 1 : Registración -  formulario que tenga:

- 2 TextBox, uno con mail, otro con username

-1 TextBox del tipo number para la edad

-2 textBox uno para escribir la contraseña y el otro para repetir

Validaciones: 1) Todos los campos sean requeridos 2) Edad sea mayor a 15 años 3) Contraseña escrita y contraseña repetida sean iguales 4) mail tenga formato de Email

Al registrar el dato debe crearse 1 Cookie con la contraseña y 1 Session con el nombre de usuario


B) Formulario 2 : Gestión de archivos 

Debe permitir cargar/descargar archivos. Los mismos se guardan en una carpeta con el nombre de usuario dentro del directorio del proyecto. Para ello, debe recuperarse el valor nombre de usuario de la Session anterior, debe verificar si existe la carpeta $"{Server.MapPath(".")}/{nombreUsuario}", en caso que no exista la crea, en caso que si exista la recorre y completa un Gridview con los archivos subidos y la posibilidad de descargar el archivo.

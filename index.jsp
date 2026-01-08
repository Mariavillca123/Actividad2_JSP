<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registro de Curso</title>
    <link rel="stylesheet" href="estilos.css">
</head>
<body>

<h1>Registro de Estudiantes</h1>

<form action="RegistroServlet" method="post">

    <label>Nombre:</label>
    <input type="text" name="nombre" required><br>

    <label>Correo:</label>
    <input type="email" name="correo" required><br>

    <label>Curso:</label>
    <select name="curso" required>
        <option value="">Seleccione un curso</option>
        <option value="Programación Web">Programación Web</option>
        <option value="Base de Datos">Base de Datos</option>
        <option value="Redes">Redes</option>
        <option value="Sistemas Operativos">Sistemas Operativos</option>
    </select>
    <br><br>

    <button type="submit" name="accion" value="guardar">Guardar</button>
</form>

<br>

<form action="RegistroServlet" method="post">
    <button type="submit" name="accion" value="mostrar">
        Mostrar registros
    </button>
</form>

</body>
</html>

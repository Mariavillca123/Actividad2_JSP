<%@ page import="java.util.ArrayList" %>
<%@ page import="modelo.Estudiante" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Listado</title>
</head>
<body>

<h1>Estudiantes Registrados</h1>

<table border="1">
    <tr>
        <th>Nombre</th>
        <th>Correo</th>
        <th>Curso</th>
    </tr>

<%
    ArrayList<Estudiante> lista = (ArrayList<Estudiante>) request.getAttribute("lista");

    if (lista != null) {
        for (Estudiante e : lista) {
%>
    <tr>
        <td><%= e.getNombre() %></td>
        <td><%= e.getCorreo() %></td>
        <td><%= e.getCurso() %></td>
    </tr>
<%
        }
    }
%>

</table>

<a href="index.jsp">Volver</a>

</body>
</html>

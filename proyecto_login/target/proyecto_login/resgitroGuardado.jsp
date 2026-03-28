<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.login.Usuario"%>
<!DOCTYPE html>
<html>
<body>
    <h2>Registro exitoso en la base de datos</h2>
    <p>Se guardaron los siguientes datos:</p>
    <% Usuario u = (Usuario) request.getAttribute("u"); %>
    <table border="1">
        <tr><td>Cuenta:</td><td><%= u.getCuenta() %></td></tr>
        <tr><td>Nombre:</td><td><%= u.getNombre() %></td></tr>
        <tr><td>Contraseña:</td><td><%= u.getClave() %></td></tr>
        <tr><td>Mail:</td><td><%= u.getMail() %></td></tr>
    </table><br>
    <a href="index.jsp"><button type="button">Regresar</button></a>
</body>
</html>
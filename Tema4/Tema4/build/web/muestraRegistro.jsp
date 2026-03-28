<%-- 
    Document   : muestraRegistro
    Created on : 26 mar 2026, 10:17:47 a.m.
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Registro Exitoso</title>
</head>
<body>

<h2>Producto Registrado</h2>

<table border="1" cellpadding="8">
    <tr>
        <td>Nombre:</td>
        <td>${nombre}</td>
    </tr>
    <tr>
        <td>Precio:</td>
        <td>${precio}</td>
    </tr>
    <tr>
        <td>Cantidad:</td>
        <td>${cantidad}</td>
    </tr>
</table>

<br>

<form action="index.jsp">
    <input type="submit" value="Volver">
</form>

</body>
</html>
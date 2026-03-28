<%-- 
    Document   : index
    Created on : 26 mar 2026, 10:17:38 a.m.
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Registro de Producto</title>
</head>
<body>

<h2>Registrar Producto</h2>

<form action="registraProducto" method="post">
    
    <table border="1" cellpadding="8">
        <tr>
            <td>Nombre:</td>
            <td><input type="text" name="nombre"></td>
        </tr>
        <tr>
            <td>Precio:</td>
            <td><input type="text" name="precio"></td>
        </tr>
        <tr>
            <td>Cantidad:</td>
            <td><input type="text" name="cantidad"></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="Registrar">
            </td>
        </tr>
    </table>
</form>
<br>
<form action="listaProductos.jsp" method="get">
    <input type="submit" value="Ver productos registrados">
</form>
</body>
</html>
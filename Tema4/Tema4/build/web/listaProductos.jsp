<%-- 
    Document   : listaProductos
    Created on : 26 mar 2026, 10:25:01 a.m.
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.guardaProducto"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Lista de Productos</title>
    </head>
    <body>
        <h2>Productos Registrados</h2>
        <%
            guardaProducto gp = new guardaProducto();
            List<String> lista = gp.listar();
        %>

        <table border="1" cellpadding="8">
            <tr>
                <th>#</th>
                <th>Producto</th>
                <th>Acción</th>
            </tr>
            <%
                for (int i = 0; i < lista.size(); i++) {
            %>
            <tr>
                <td><%= i %></td>
                <td><%= lista.get(i) %></td>
                <td>
                    <form action="eliminaProducto" method="post">
                        <input type="hidden" name="index" value="<%= i %>">
                        <input type="submit" value="Eliminar">
                    </form>
                </td>
            </tr>
            <%
                }
            %>
        </table>
        <br>
        <form action="index.jsp">
            <input type="submit" value="Volver">
        </form>
    </body>
</html>

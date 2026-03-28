<%-- 
    Document   : Resultado
    Created on : 26 mar 2026, 9:29:15 a.m.
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Modelo.EcuacionCuadratica"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Resultado</title>
    </head>
    <body>
        <%
            double a = Double.parseDouble(request.getParameter("a"));
            double b = Double.parseDouble(request.getParameter("b"));
            double c = Double.parseDouble(request.getParameter("c"));

            EcuacionCuadratica ecu = new EcuacionCuadratica(a, b, c);
            ecu.resolver();
            ecu.guardarEnArchivo(); 
        %>

        <h2>Resultado</h2>

        <table border="1" cellpadding="8">
            <tr>
                <td>Resultado:</td>
                <td><%= ecu.getResultado() %></td>
            </tr>
        </table>
        <br>
        <form action="index.jsp">
            <input type="submit" value="Volver">
        </form>
    </body>
</html>
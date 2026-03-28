<%-- 
    Document   : resultado
    Created on : 26 mar 2026, 11:18:16 a.m.
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Modelo.Calculadora"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Resultado</title>
    </head>
    <body>

        <%
            String nombre = request.getParameter("nombre");
            String sueldoStr = request.getParameter("sueldo");
            String diasStr = request.getParameter("dias");

            double sueldo = Double.parseDouble(sueldoStr);
            int dias = Integer.parseInt(diasStr);

            Calculadora calc = new Calculadora(sueldo, dias);
            calc.calcularSueldo();
        %>

        <h2>Resultado</h2>

        <table border="1" cellpadding="8" cellspacing="0">
            <tr>
                <td>Nombre:</td>
                <td><%= nombre %></td>
            </tr>
            <tr>
                <td>Sueldo Total:</td>
                <td><%= calc.getSueldoTotal() %></td>
            </tr>
        </table>

        <br>

        <form action="index.jsp" method="get">
            <input type="submit" value="Volver">
        </form>

    </body>
</html>
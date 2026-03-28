<%-- 
    Document   : index
    Created on : 26 mar 2026, 11:18:08 a.m.
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Calcular Sueldo</title>
    </head>
    <body>

        <h2>Calcular Sueldo</h2>

        <form action="resultado.jsp" method="post">

            <table border="1" cellpadding="8" cellspacing="0">
                <tr>
                    <td>Nombre:</td>
                    <td><input type="text" name="nombre"></td>
                </tr>

                <tr>
                    <td>Sueldo Diario:</td>
                    <td><input type="text" name="sueldo"></td>
                </tr>

                <tr>
                    <td>Días Trabajados:</td>
                    <td><input type="text" name="dias"></td>
                </tr>

                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="Calcular sueldo">
                    </td>
                </tr>
            </table>

        </form>

    </body>
</html>
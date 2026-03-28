<%-- 
    Document   : index
    Created on : 26 mar 2026, 9:29:05 a.m.
    Author     : USER
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Ecuación Cuadrática</title>
</head>
<body>

<h2>Resolver ecuación de segundo grado</h2>
<img src="https://t3.ftcdn.net/jpg/06/20/75/82/360_F_620758206_kePuGyF4iynIPFxKo3uySkW3uGBRIFm5.jpg" 
     width="300"><br><br>
<form action="resultado.jsp" method="post">
    <table border="1" cellpadding="8">
        <tr>
            <td>a:</td>
            <td><input type="text" name="a"></td>
        </tr>
        <tr>
            <td>b:</td>
            <td><input type="text" name="b"></td>
        </tr>
        <tr>
            <td>c:</td>
            <td><input type="text" name="c"></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="Resolver">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
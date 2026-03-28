<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
    <h2>Bienvenido al sistema de Login!</h2>
    <p>Introduce tu cuenta y tu contraseña</p>
    <form action="LoginServlet" method="post">
        <table border="1">
            <tr><td>Cuenta:</td><td><input type="text" name="cuenta"></td></tr>
            <tr><td>Contraseña:</td><td><input type="password" name="clave"></td></tr>
        </table><br>
        <button type="reset">Borrar</button>
        <button type="submit" name="accion" value="ingresar">Ingresar</button>
        <br><br>
        <a href="llenaRegistro.jsp"><button type="button">Registrar</button></a>
    </form>
</body>
</html>
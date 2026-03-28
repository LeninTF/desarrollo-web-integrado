<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
    <h2>Datos del usuario a borrar</h2>
    <form action="BorrarServlet" method="post">
        <table border="1">
            <tr><td>Cuenta:</td><td><input type="text" name="cuenta"></td></tr>
            <tr><td>Contraseña:</td><td><input type="password" name="clave"></td></tr>
        </table><br>
        
        <button type="reset">Borrar</button>
        <button type="submit">Borrar usuario</button>
        
        <br><br>
        <a href="inicioSistema.jsp"><button type="button">Regresar</button></a>
    </form>
</body>
</html>
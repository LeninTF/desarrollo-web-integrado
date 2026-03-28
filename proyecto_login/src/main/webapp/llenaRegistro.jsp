<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
    <h2>Registra tus datos</h2>
    <form action="LoginServlet" method="post">
        <table border="1">
            <tr><td>Cuenta:</td><td><input type="text" name="cuenta"></td></tr>
            <tr><td>Nombre:</td><td><input type="text" name="nombre"></td></tr>
            <tr><td>Contraseña:</td><td><input type="password" name="clave"></td></tr>
            <tr><td>Mail:</td><td><input type="email" name="mail"></td></tr>
        </table><br>
        <button type="reset">Borrar</button>
        <button type="submit" name="accion" value="registrar">Guardar</button>
        <br><br>
        <a href="index.jsp"><button type="button">Regresar</button></a>
    </form>
</body>
</html>
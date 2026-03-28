<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
    <% 
    Boolean exito = (Boolean) request.getAttribute("exito");
    if(exito != null && exito) { %>
        <h2>El registro se borró con éxito</h2>
    <% } else { %>
        <h2>No se pudo borrar el registro</h2>
    <% } %>
    <br>
    <a href="inicioSistema.jsp"><button>Regresar</button></a>
</body>
</html>
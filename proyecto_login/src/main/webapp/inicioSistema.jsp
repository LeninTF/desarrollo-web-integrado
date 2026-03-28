<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.login.Usuario"%>
<!DOCTYPE html>
<html>
<body>
    <% Usuario u = (Usuario) session.getAttribute("usuarioLogueado"); %>
    <h2>Hola <%= u.getNombre() %> bienvenido al sistema!</h2>
    
    <form action="LoginServlet" method="get">
        <button type="submit">Consultar Usuarios</button>
    </form><br>
    
    <a href="capturaBorrar.jsp"><button>Borrar un usuario</button></a><br><br>
    
    <a href="index.jsp"><button>Salir</button></a>
</body>
</html>
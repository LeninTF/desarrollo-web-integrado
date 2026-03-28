<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List, com.login.Usuario"%>
<!DOCTYPE html>
<html>
<body>
    <h3>Los usuarios que están registrados son:</h3>
    <table border="1">
        <tr><th>Cuenta</th><th>Nombre</th><th>Clave</th><th>Mail</th></tr>
        <% 
        List<Usuario> lista = (List<Usuario>) session.getAttribute("listaCompleta");
        if(lista != null) {
            for(Usuario user : lista) { %>
                <tr>
                    <td><%= user.getCuenta() %></td>
                    <td><%= user.getNombre() %></td>
                    <td><%= user.getClave() %></td>
                    <td><%= user.getMail() %></td>
                </tr>
        <%  } 
        } %>
    </table><br>
    <a href="inicioSistema.jsp"><button>Regresar</button></a>
</body>
</html>
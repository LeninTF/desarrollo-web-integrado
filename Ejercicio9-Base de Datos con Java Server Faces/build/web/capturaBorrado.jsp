<%-- 
    Author     : lenin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html> 
<html> 
    <head> 
        <meta http-equiv="Content-Type"  
                 content="text/html; charset=UTF-8"> 
        <title>Captura para borrar</title> 
    </head> 
    <body> 
      <%@ page import="Controller.borraUsuario" %>   
      <h3> Datos del videojuego a borrar</h3> 
      <form action="borraUsuario" method="post"> 
        <table cellspacing="3" cellpadding="3" border="1" > 
          <tr> 
            <td align="right"> Clave: </td> 
            <td><input type="text" name="cuenta"></td>  
          </tr>
          <tr> 
            <td align="right"> Nombre: </td> 
            <td><input type="text" name="clave"></td>  
          </tr>  
            
        </table> 
      
        <input type="reset" value="Borrar"> 
 
      </form> 
    
      <form action="inicioSistema.jsp" method="post"> 
        <input type="submit" value="Regresar"> 
      </form> 
    </body> 
</html> 
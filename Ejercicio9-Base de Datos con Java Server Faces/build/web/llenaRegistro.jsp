<%-- 
    Author     : Lenin Tambra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html> 
<html> 
    <head> 
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <title>Llena Registro</title> 
    </head> 
    <body> 
       
      <%@ page import="Controller.registro" %>   
      <h3> Proporciona los datos del nuevo videojuego</h3> 
      <form action="registro" method="post"> 
        <table cellspacing="3" cellpadding="3" border="1" > 
          <tr> 
            <td align="right"> Clave: </td> 
            <td><input type="text" name="cuenta"></td>  
          </tr>  
           <tr> 
            <td align="right"> Nombre: </td> 
            <td><input type="text" name="nombre"></td>  
          </tr>  
          <tr> 
            <td align="right"> Genero: </td> 
            <td><input type="text" name="clave"></td>  
          </tr>  
           <tr> 
            <td align="right"> Plataforma: </td> 
            <td><input type="text" name="mail"></td>  
          </tr>  
          </tr>  
           <tr> 
            <td align="right"> Precio </td> 
            <td><input type="text" name="mail"></td>  
          </tr> 
        </table> 

        <input type="submit" value="Guardar"> 
      </form> 
    
      <form action="index.jsp" method="post"> 
        <input type="submit" value="Regresar"> 
      </form> 
      
    </body> 
</html> 

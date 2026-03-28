<%@page import="java.lang.ModuleLayer.Controller"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html> 
<html> 
    <head> 
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <title>Ingreso al sistema</title> 
    </head> 
    <body> 
      <h1>Práctica de Bases de Datos con Java Server Faces</h1> 
      <%@ page import="Controller.login" %>   
      <h3> Videojuegos en existencia</h3> 
      <form action="login" method="post"> 
        <table cellspacing="3" cellpadding="3" border="1" > 
          <tr> 
            <td align="right"> <b>Clave </td> 
            <td align="right"> <b>Nombre </td>
            <td align="right"> <b>Genero </td>
            <td align="right"> <b>Plataforma </td>
            <td align="right"> <b>Precio </td>
          </tr>  
          <tr> 
            <td align="right"> 1 </td> 
            <td align="right"> Mario Kart </td> 
            <td align="right"> Carreras </td> 
            <td align="right"> PlayStation </td> 
            <td align="right"> 1199 </td> 
          </tr>   
          <tr> 
            <td align="right"> 2 </td> 
            <td align="right"> Fifa 17</td> 
            <td align="right"> Deportes </td> 
            <td align="right"> PlayStation </td> 
            <td align="right"> 999 </td> 
          </tr> <tr> 
            <td align="right"> 3 </td> 
            <td align="right"> Gears of War </td> 
            <td align="right"> Guerra </td> 
            <td align="right"> Xbox </td> 
            <td align="right"> 1099 </td> 
          </tr> 
          
        </table> 
      
        <input type="reset" value="Borrar juego"> 
     
      </form> 
    
      <form action="llenaRegistro.jsp" method="post"> 
        <input type="submit" value="Agregar Juego"> 
      </form> 
      
      <form action="llenaRegistro.jsp" method="post"> 
        <input type="submit" value="Modificar Juego"> 
      </form> 
      
    </body> 
</html> 
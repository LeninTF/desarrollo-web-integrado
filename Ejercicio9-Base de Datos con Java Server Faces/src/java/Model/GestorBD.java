/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.Connection; 
import java.sql.ResultSet; 
import java.sql.SQLException; 
import java.sql.Statement; 
import java.util.ArrayList; 
  
public class GestorBD { 
    Connection conn = null; 
    Statement stm=null; 
    ResultSet usuarioResultSet; 
    Usuario usuarioHallado; 
    String cuent, nom, passw, mail;
     public boolean registrar(String nombre, String genero, 
                             String plataforma, String precio) {      
        int resultUpdate = 0; 
        try{ 
        conn = ConectaBD.abrir(); 
        stm = conn.createStatement(); 
         
        resultUpdate=stm.executeUpdate("INSERT INTO existencias VALUES('" + nombre + "','" + genero + "','" + plataforma +"','"+precio+ "');"); 
        if(resultUpdate != 0){ 
            ConectaBD.cerrar(); 
            return true; 
        }else{ 
            ConectaBD.cerrar(); 
            return false;         
        } 
         
       } catch (Exception e) { 
            System.out.println("Error en la base de datos."); 
            e.printStackTrace(); 
            return false; 
       }  
    }
     
     public Usuario consultar(String nombre, String genero){       
  try{ 
      conn = ConectaBD.abrir(); 
      stm = conn.createStatement(); 
      usuarioResultSet = stm.executeQuery("SELECT * FROM existencias WHERE nombre='"+nombre+ 
                                      "' and genero='"+genero+"';"); 
      if(!usuarioResultSet.next()){ 
          System.out.println(" No se encontro el registro"); 
          ConectaBD.cerrar(); 
          return null; 
      }else{ 
          System.out.println("Se encontró el registro"); 
          cuent = usuarioResultSet.getString("nombre"); 
          nom = usuarioResultSet.getString("genero"); 
          passw = usuarioResultSet.getString("plataforma"); 
          mail = usuarioResultSet.getString("precio"); 
          usuarioHallado = new Usuario(cuent,nom,passw,mail); 
                 
          ConectaBD.cerrar(); 
          return usuarioHallado; 
      } 
    }catch(Exception e){ 
       System.out.println("Error en la base de datos."); 
       e.printStackTrace(); 
       return null; 
    }
  }
     public boolean borrar(String cuenta, String clave){      
  int resultUpdate = 0; 
  try{ 
      conn = ConectaBD.abrir(); 
      stm = conn.createStatement(); 
         
      resultUpdate= stm.executeUpdate("DELETE FROM usuarios WHERE(cuenta='" + cuenta + 
                                    "'and clave='"+ clave +"');"); 
      if(resultUpdate != 0){ 
          ConectaBD.cerrar(); 
          return true; 
      }else{ 
          ConectaBD.cerrar(); 
          return false;         
      } 
   } catch (SQLException e) { 
         System.out.println("Error en la base de datos."); 
         e.printStackTrace(); 
         return false; 
   }  
  }
     public ArrayList<Usuario> leeTodos(){ 
  ArrayList<Usuario> usuarios = new ArrayList<Usuario>(); 
  try{ 
    conn = ConectaBD.abrir(); 
    stm = conn.createStatement(); 
    usuarioResultSet = stm.executeQuery("SELECT * FROM usuarios"); 
    if(!usuarioResultSet.next()){ 
        System.out.println(" No se encontraron registros"); 
        ConectaBD.cerrar(); 
        return null; 
    }else{ 
       do{ 
          cuent = usuarioResultSet.getString("cuenta"); 
          nom = usuarioResultSet.getString("nombre"); 
          passw = usuarioResultSet.getString("clave"); 
          mail = usuarioResultSet.getString("mail"); 
          usuarioHallado = new Usuario(cuent,nom,passw,mail); 
          usuarios.add(usuarioHallado); 
       }while(usuarioResultSet.next()); 
          ConectaBD.cerrar(); 
          return usuarios; 
    } 
  }catch(Exception e){ 
     System.out.println("Error en la base de datos."); 
     e.printStackTrace(); 
     return null; 
 } 
}
}
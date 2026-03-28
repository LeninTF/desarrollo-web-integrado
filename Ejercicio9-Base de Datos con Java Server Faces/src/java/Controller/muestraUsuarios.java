/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import Model.*;
import java.util.ArrayList;

/**
 *
 * @author lenin
 */
 
@WebServlet(name = "muestraUsuarios", 
            urlPatterns = {"/muestraUsuarios"}) 
public class muestraUsuarios extends HttpServlet { 
  protected void processRequest(HttpServletRequest request, 
                                HttpServletResponse response) 
          throws ServletException, IOException { 
    response.setContentType("text/html;charset=UTF-8"); 
    PrintWriter out = response.getWriter(); 
    try { 
         ArrayList <Usuario> usuarios = new ArrayList<Usuario>(); 
         Usuario usuario; 
         GestorBD gestorBD = new GestorBD(); 
            
         usuarios = gestorBD.leeTodos(); 
         if (usuarios != null){ 
            request.setAttribute("Usuarios",usuarios);            
            request.getRequestDispatcher("/listaUsuarios.jsp") 
                                      .forward(request, response); 
         }else 
            request.getRequestDispatcher("/noHayRegistros.jsp") 
                                      .forward(request, response);   
     } finally {             
         out.close(); 
     } 
  }
}

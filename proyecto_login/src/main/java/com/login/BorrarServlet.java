package com.login;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

@WebServlet("/BorrarServlet")
public class BorrarServlet extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String cuenta = request.getParameter("cuenta");
        String clave = request.getParameter("clave");

        // Buscamos en la lista compartida de Data
        boolean eliminado = Data.listaUsuarios.removeIf(u -> 
            u.getCuenta().equals(cuenta) && u.getClave().equals(clave)
        );

        request.setAttribute("exito", eliminado);
        request.getRequestDispatcher("borradoResultado.jsp").forward(request, response);
    }
}
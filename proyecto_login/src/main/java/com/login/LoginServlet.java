package com.login;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String accion = request.getParameter("accion");

        if ("registrar".equals(accion)) {
            Usuario nuevo = new Usuario(
                request.getParameter("cuenta"),
                request.getParameter("nombre"),
                request.getParameter("clave"),
                request.getParameter("mail")
            );
            Data.listaUsuarios.add(nuevo);
            
            request.setAttribute("u", nuevo);
            request.getRequestDispatcher("registroGuardado.jsp").forward(request, response);

        } else if ("ingresar".equals(accion)) {
            String cuenta = request.getParameter("cuenta");
            String clave = request.getParameter("clave");
            Usuario encontrado = null;

            for (Usuario u : Data.listaUsuarios) {
                if (u.getCuenta().equals(cuenta) && u.getClave().equals(clave)) {
                    encontrado = u;
                    break;
                }
            }

            if (encontrado != null) {
                HttpSession sesion = request.getSession();
                sesion.setAttribute("usuarioLogueado", encontrado);
                sesion.setAttribute("listaCompleta", Data.listaUsuarios);
                request.getRequestDispatcher("inicioSistema.jsp").forward(request, response);
            } else {
                request.getRequestDispatcher("noEncontrado.jsp").forward(request, response);
            }

        } else if ("borrar_usuario".equals(accion)) {
            String cuenta = request.getParameter("cuenta");
            String clave = request.getParameter("clave");
            
            boolean eliminado = Data.listaUsuarios.removeIf(u -> 
                u.getCuenta().equals(cuenta) && u.getClave().equals(clave));
            
            request.setAttribute("exito", eliminado);
            request.getRequestDispatcher("borradoResultado.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
                request.getRequestDispatcher("listaUsuarios.jsp").forward(request, response);
    }
}
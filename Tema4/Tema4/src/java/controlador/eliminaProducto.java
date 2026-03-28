/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controlador;

/**
 *
 * @author USER
 */
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import modelo.guardaProducto;
import java.io.IOException;

@WebServlet("/eliminaProducto")
public class eliminaProducto extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int index = Integer.parseInt(request.getParameter("index"));

        guardaProducto gp = new guardaProducto();
        gp.eliminar(index);

        response.sendRedirect("listaProductos.jsp");
    }
}

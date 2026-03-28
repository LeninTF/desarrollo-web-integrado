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

@WebServlet("/registraProducto")
public class registraProducto extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nombre = request.getParameter("nombre");
        double precio = Double.parseDouble(request.getParameter("precio"));
        int cantidad = Integer.parseInt(request.getParameter("cantidad"));

        
        guardaProducto gp = new guardaProducto();
        gp.guardar(nombre, precio, cantidad);

        
        request.setAttribute("nombre", nombre);
        request.setAttribute("precio", precio);
        request.setAttribute("cantidad", cantidad);

        request.getRequestDispatcher("muestraRegistro.jsp").forward(request, response);
    }
}

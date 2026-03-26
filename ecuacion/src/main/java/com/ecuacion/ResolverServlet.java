package com.ecuacion;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.*;

@WebServlet("/ResolverServlet")
public class ResolverServlet extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {

        double a = Double.parseDouble(request.getParameter("a"));
        double b = Double.parseDouble(request.getParameter("b"));
        double c = Double.parseDouble(request.getParameter("c"));
        String resultado = "";

        if (a == 0) {
            resultado = "No es una ecuación cuadrática (a no puede ser 0).";
        } else {
            double discriminante = (b * b) - (4 * a * c);

            if (discriminante >= 0) {
                // Raíces Reales
                double x1 = (-b + Math.sqrt(discriminante)) / (2 * a);
                double x2 = (-b - Math.sqrt(discriminante)) / (2 * a);
                resultado = String.format("Raíces Reales: x1 = %.2f, x2 = %.2f", x1, x2);
            } else {
                // Raíces Complejas
                double parteReal = -b / (2 * a);
                double parteImaginaria = Math.sqrt(-discriminante) / (2 * a);
                resultado = String.format("Raíces Complejas: x1 = %.2f + %.2fi, x2 = %.2f - %.2fi", 
                                            parteReal, parteImaginaria, parteReal, parteImaginaria);
            }
        }
        String path = getServletContext().getRealPath("/") + "historial.txt";
        try (PrintWriter writer = new PrintWriter(new BufferedWriter(new FileWriter(path, true)))) {
            writer.println("Ecuación: " + a + "x^2 + " + b + "x + " + c + " = 0");
            writer.println("Resultado: " + resultado);
            writer.println("-------------------------------------------");
        }

        request.setAttribute("res", resultado);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}
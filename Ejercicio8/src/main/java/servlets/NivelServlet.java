package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/NivelServlet")
public class NivelServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String puntosParam = request.getParameter("puntos");
        int puntos;

        try {
            puntos = Integer.parseInt(puntosParam.trim());
        } catch (NumberFormatException e) {
            response.sendRedirect("index.jsp?error=invalido");
            return;
        }

        if (puntos < 0 || puntos > 1000) {
            response.sendRedirect("index.jsp?error=invalido");
            return;
        }

        String nivel;
        String descripcion;
        String color;   
        int porcentaje;    

        if (puntos <= 250) {
            nivel       = "Principiante";
            descripcion = "Estás comenzando tu aventura. ¡Sigue practicando!";
            color       = "#64b5f6";   // azul claro
            porcentaje  = Math.round((puntos / 250f) * 25);

        } else if (puntos <= 600) {
            nivel       = "Intermedio";
            descripcion = "Buen progreso. Ya dominas las mecánicas básicas.";
            color       = "#81c784";   // verde
            porcentaje  = 25 + Math.round(((puntos - 251) / 349f) * 35);

        } else if (puntos <= 900) {
            nivel       = "Avanzado";
            descripcion = "Excelente desempeño. Eres un jugador muy hábil.";
            color       = "#ffb74d";
            porcentaje  = 60 + Math.round(((puntos - 601) / 299f) * 25);

        } else {
            nivel       = "Experto";
            descripcion = "¡Nivel máximo! Dominas el juego a la perfección.";
            color       = "#00ffb4";   
            porcentaje  = 85 + Math.round(((puntos - 901) / 99f) * 15);
        }

        request.setAttribute("puntos",      puntos);
        request.setAttribute("nivel",       nivel);
        request.setAttribute("descripcion", descripcion);
        request.setAttribute("color",       color);
        request.setAttribute("porcentaje",  porcentaje);

        request.getRequestDispatcher("resultado.jsp")
               .forward(request, response);
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("index.jsp");
    }
}

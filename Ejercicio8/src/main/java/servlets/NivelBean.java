package servlets;

import jakarta.enterprise.context.RequestScoped;
import jakarta.inject.Named;

/**
 * Managed Bean para la versión JSF del ejercicio.
 *
 * El bean recibe los puntos desde el formulario Facelets (nivel.xhtml),
 * ejecuta la clasificación y retorna la navegación hacia resultado.xhtml.
 */
@Named("nivelBean")
@RequestScoped
public class NivelBean {

    // ── Datos del formulario ─────────────────────────────────────────────────
    private int    puntos;

    // ── Datos calculados ─────────────────────────────────────────────────────
    private String nivel;
    private String descripcion;
    private String color;
    private int    porcentaje;
    private String icono;
    private boolean calculado = false;

    // ── Acción del formulario ────────────────────────────────────────────────

    /**
     * Método invocado por el botón "Determinar nivel" del formulario JSF.
     * Clasifica al jugador según la tabla y navega a la vista de resultado.
     */
    public String calcularNivel() {

        if (puntos < 0 || puntos > 1000) {
            // Permanecer en la misma página con mensaje de error
            // (se puede usar FacesContext para añadir FacesMessage)
            return null;
        }

        if (puntos <= 250) {
            nivel       = "Principiante";
            descripcion = "Estás comenzando tu aventura. ¡Sigue practicando!";
            color       = "#64b5f6";
            icono       = "🌱";
            porcentaje  = Math.round((puntos / 250f) * 25);

        } else if (puntos <= 600) {
            nivel       = "Intermedio";
            descripcion = "Buen progreso. Ya dominas las mecánicas básicas.";
            color       = "#81c784";
            icono       = "⚡";
            porcentaje  = 25 + Math.round(((puntos - 251) / 349f) * 35);

        } else if (puntos <= 900) {
            nivel       = "Avanzado";
            descripcion = "Excelente desempeño. Eres un jugador muy hábil.";
            color       = "#ffb74d";
            icono       = "🔥";
            porcentaje  = 60 + Math.round(((puntos - 601) / 299f) * 25);

        } else {
            nivel       = "Experto";
            descripcion = "¡Nivel máximo! Dominas el juego a la perfección.";
            color       = "#00ffb4";
            icono       = "👑";
            porcentaje  = 85 + Math.round(((puntos - 901) / 99f) * 15);
        }

        calculado = true;
        return "resultado?faces-redirect=true"
             + "&puntos=" + puntos
             + "&nivel="  + nivel;
    }

    // ── Getters y Setters ────────────────────────────────────────────────────

    public int getPuntos() { return puntos; }
    public void setPuntos(int puntos) { this.puntos = puntos; }

    public String getNivel()       { return nivel; }
    public String getDescripcion() { return descripcion; }
    public String getColor()       { return color; }
    public int    getPorcentaje()  { return porcentaje; }
    public String getIcono()       { return icono; }
    public boolean isCalculado()   { return calculado; }
}

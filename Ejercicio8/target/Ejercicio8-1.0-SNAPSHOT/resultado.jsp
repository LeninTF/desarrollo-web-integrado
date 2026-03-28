<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resultado – Nivel del Jugador</title>
    <style>

    </style>
</head>
<body>
<%
    /* Recuperar atributos puestos por el Servlet */
    int    puntos      = (Integer) request.getAttribute("puntos");
    String nivel       = (String)  request.getAttribute("nivel");
    String descripcion = (String)  request.getAttribute("descripcion");

    /* Icono según nivel */
    String icono;
    switch (nivel) {
        case "Principiante": icono = "🌱"; break;
        case "Intermedio":   icono = "⚡"; break;
        case "Avanzado":     icono = "🔥"; break;
        default:             icono = "👑"; break;
    }
%>
<div class="container">

    <div class="nivel-icon"><%= icono %></div>

    <p class="puntos-label">Puntos obtenidos</p>
    <div class="puntos-valor"><%= puntos %></div>
    <p class="puntos-max">/ 1000 pts</p>

    <div class="progress-wrap">
        <div class="progress-fill"></div>
    </div>

    <p class="nivel-tag">Tu nivel es</p>
    <div class="nivel-nombre"><%= nivel %></div>

    <div class="divider"></div>

    <p class="nivel-desc"><%= descripcion %></p>

    <a href="index.jsp" class="btn-volver">← Volver a intentar</a>
</div>
</body>
</html>

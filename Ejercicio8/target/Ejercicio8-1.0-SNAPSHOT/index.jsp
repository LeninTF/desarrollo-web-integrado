<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nivel del Jugador</title>
    
    </style>
</head>
<body>
<div class="container">
    <span class="badge">// Sistema de niveles</span>
    <h1>Clasificador<br>de Jugador</h1>
    <p class="subtitle">Ingresa tu puntaje para conocer tu nivel</p>

    <div class="table-ref">
        <table>
            <tr>
                <th>Puntos</th>
                <th>Nivel</th>
            </tr>
            <tr><td class="td-puntos">0 – 250</td><td>Principiante</td></tr>
            <tr><td class="td-puntos">251 – 600</td><td>Intermedio</td></tr>
            <tr><td class="td-puntos">601 – 900</td><td>Avanzado</td></tr>
            <tr><td class="td-puntos">901 – 1000</td><td>Experto</td></tr>
        </table>
    </div>

    <form action="NivelServlet" method="post">
        <label for="puntos">Puntos obtenidos</label>
        <input
            type="number"
            id="puntos"
            name="puntos"
            min="0"
            max="1000"
            placeholder="0"
            required
            autofocus
        />
        <p class="hint">Valor entre 0 y 1000 puntos</p>

        <%-- Mostrar error si viene de redireccion con error --%>
        <% String error = request.getParameter("error");
           if ("invalido".equals(error)) { %>
            <div class="error">⚠ El valor debe estar entre 0 y 1000.</div>
        <% } %>

        <button type="submit">Determinar nivel →</button>
    </form>
</div>
</body>
</html>

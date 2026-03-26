<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Calculadora Cuadrática</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body class="container mt-5">
    <div class="card p-4 shadow-sm mx-auto" style="max-width: 450px;">
        <h2 class="text-center mb-4">Ecuación Cuadrática</h2>
        <form action="ResolverServlet" method="post">
            <div class="mb-3">
                <label>Coeficiente a:</label>
                <input type="number" name="a" step="any" class="form-control" required>
            </div>
            <div class="mb-3">
                <label>Coeficiente b:</label>
                <input type="number" name="b" step="any" class="form-control" required>
            </div>
            <div class="mb-3">
                <label>Coeficiente c:</label>
                <input type="number" name="c" step="any" class="form-control" required>
            </div>
            <button type="submit" class="btn btn-primary w-100">Resolver y Guardar</button>
        </form>

        <%-- Mostrar resultado solo si existe --%>
        <% if(request.getAttribute("res") != null) { %>
            <div class="alert alert-info mt-4">
                <strong>Resultado:</strong><br>
                <%= request.getAttribute("res") %>
            </div>
        <% } %>
    </div>
</body>
</html>
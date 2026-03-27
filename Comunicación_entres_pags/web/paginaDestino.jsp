<html>
    <head>
        <meta http-equiv="Content-Type"
              content="text/html; charset=UTF-8">
        <title>Pagina Destino JSP</title>
    </head>
    <body>
        <%
            String nombre = request.getParameter("nombre");
            String apellidos = request.getParameter("apellidos");
            String mail = request.getParameter("mail");
            String genero = request.getParameter("genero");

            String Java = request.getParameter("java");
            String c = request.getParameter("c");
            String basic = request.getParameter("basic");
            String html = request.getParameter("html");

            String[] idiomasSelec = 
                    request.getParameterValues("idiomas");
        %>

        <h1>Solicitud Recibida</h1>
        <h2>Tus datos son: </h2>

        <table cellspacing="3" cellpadding="3" border="1" >
            <tr>
                <td align="right"> Te llamas: </td>
                <td> <%= nombre %> </td>
            </tr>
            <tr>
                <td align="right"> Apellidos: </td>
                <td> <%= apellidos %> </td>
            </tr>
            <tr>
                <td align="right"> Tu correo es: </td>
                <td> <%= mail %> </td>
            </tr>
            <tr>
                <td align="right"> Eres: </td>
                <td> <%= genero %> </td>
            </tr>
        </table>

        <p> Manejas los siguientes lenguajes de programación: <br>
            <% if ( Java != null ) { %>
            Java,
            <% } %>
            <% if ( c != null ) { %>
            C/C++,
            <% } %>
            <% if ( basic != null ) { %>
            basic
            <% } %>
            <% if ( html != null ) { %>
            html
            <% } %>
        </p>

        <p> Los idiomas que comprendes son: <br>
            <%
                for (int i=0; i< idiomasSelec.length; i++)
                {
            %>
            <%= idiomasSelec[i] %>
            <%  }
            %>
        </p>

        <form action="index.html" method="post">
            <input type="submit" value="Regresar">
        </form>
    </body>
</html>
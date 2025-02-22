

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="jakarta.servlet.http.HttpSession"%>
<%
    HttpSession sesion = request.getSession(false); // Obtiene la sesión sin crear una nueva
    if (sesion == null || sesion.getAttribute("user") == null) {
        response.sendRedirect("login.jsp"); // Si no hay sesión, redirige al login
        return;
    }
    String username = (String) sesion.getAttribute("user"); // Obtiene el nombre de usuario de la sesión
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bienvenida - Agregar Usuario</title>
    <link rel="stylesheet" href="styles/styleBienvenida.css"/> 
</head>
<body>
    <header>
        <nav class="nav">
            <ul>
                <a class="logo" href="index.jsp">CODINGRAPH;</a>
                <a class="nav-link" href="logout.jsp">Log-out</a>
            </ul>
        </nav>
    </header>

    <div class="container">
        <h1>Bienvenido, <%= username %>!</h1> <!-- Muestra el nombre de usuario logueado -->

        <h2>Agregar un nuevo usuario</h2>

        <!-- Formulario para agregar un usuario -->
        <form action="AgregarUsuarioServlet" method="post">
            <label for="usuario_id">ID de Usuario:</label>
            <input type="text" id="usuario_id" name="usuario_id" required>
            
            <label for="nombre">Nombre:</label>
            <input type="text" id="nombre" name="nombre" required>
            
            <button type="submit">Agregar Usuario</button>
        </form>

        <%-- Mostrar mensaje de éxito o error si se agregó un usuario --%>
        <%
            String mensaje = (String) request.getAttribute("mensaje");
            if (mensaje != null) {
        %>
            <p><%= mensaje %></p>
        <%
            }
        %>
    </div>

    <footer>
        <div class="footer-content">
            <div class="footer-logo">
                <h2>CODINGRAPH;</h2>
            </div>
        </div>
    </footer>
</body>
</html>




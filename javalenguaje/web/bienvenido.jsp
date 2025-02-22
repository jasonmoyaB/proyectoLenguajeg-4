

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="jakarta.servlet.http.HttpSession"%>
<%
    HttpSession sesion = request.getSession(false);
    if (sesion == null || sesion.getAttribute("user") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
    String username = (String) sesion.getAttribute("user");
    String rol = (String) sesion.getAttribute("role"); // Obtener el rol desde la sesión
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bienvenida</title>
    <link rel="stylesheet" href="styles/styleBienvenida.css"/> 
</head>
<body>
    <header>
        <nav class="nav">
            <ul>
                <a class="logo" href="index.jsp">CODINGRAPH;</a>
                <a class="nav-link" href="index.jsp">Log-out</a>
            </ul>
        </nav>
    </header>

    <div class="container">
        <h1>Bienvenido, <%= username %>!</h1>
        <h2>
            <% if ("admin".equals(rol)) { %>
                Bienvenido al panel de administración.
            <% } else if ("user".equals(rol)) { %>
                Bienvenido, usuario regular.
            <% } %>
        </h2>

        <% if ("admin".equals(rol)) { %>
            <!-- Aquí puedes poner contenido exclusivo para admin -->
            <h3>Contenido exclusivo para administradores.</h3>
        <% } else if ("user".equals(rol)) { %>
            <!-- Aquí puedes poner contenido exclusivo para usuarios -->
            <h3>Contenido exclusivo para usuarios.</h3>
        <% } %>
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







<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@ page import="modelo.UsuarioDAO" %>
<%@ page import="modelo.RolDAO" %>
<%@ page import="java.util.List" %>
<%
    HttpSession sesion = request.getSession(false);
    if (sesion == null || sesion.getAttribute("user") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
    String username = (String) sesion.getAttribute("user");
    String rol = (String) sesion.getAttribute("role"); // Obtener el rol desde la sesión

    // Obtener los roles disponibles solo si el usuario tiene permisos de admin
    List<String> roles = null;
    if ("admin".equals(rol)) {
        RolDAO rolDAO = new RolDAO();
        roles = rolDAO.obtenerRoles(); // Obtener la lista de roles
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>administrar</title>
        <link rel="stylesheet" href="styles/styleBienvenida.css"/> 
    </head>
    <body>
        <header>
            <nav class="nav">
                <ul>
                    <a class="logo" href="index.jsp">CODINGRAPH;</a>
                    <a class="nav-link" href="">Rol::Administrador</a>
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
            <!-- Formulario para agregar un nuevo rol -->
            <h3>Agregar un nuevo rol</h3>
            <form action="AgregarRolServlet" method="post">
                <label for="nombre_rol">Nombre del Rol:</label>
                <input type="text" id="nombre_rol" name="nombre_rol" required>
                <button type="submit">Agregar Rol</button>
            </form>

            <!-- Formulario para agregar un nuevo usuario -->
            <h3>Agregar un nuevo usuario</h3>

            <form action="AgregarUsuarioServlet" method="post">
                <label for="nombre_usuario">Nombre:</label>
                <input type="text" id="nombre_usuario" name="nombre_usuario" required>

                <label for="correo">Correo:</label>
                <input type="email" id="correo" name="correo" required>

                <label for="contraseña">Contraseña:</label>
                <input type="password" id="contraseña" name="contraseña" required>

                <label for="id_rol">Seleccionar Rol:</label>
                <select id="id_rol" name="id_rol" required>
                    <option value="admin">Administrador</option>
                    <option value="usuario">Usuario</option>
                </select>

                <button type="submit">Agregar Usuario</button>
            </form>

        </form>
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







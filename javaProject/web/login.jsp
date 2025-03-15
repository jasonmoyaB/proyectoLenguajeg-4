<%-- 
    Document   : login
    Created on : 15 mar. 2025, 10:40:45
    Author     : jason
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/loginStyles.css"/>
    <title>Login</title>
</head>
<body>
    <!-- Contenedor del Login -->
    <div class="login-container">
        <h1>Iniciar Sesión</h1>
        
        <!-- Formulario de Login -->
        <form action="loginServlet" method="POST">
            <!-- Campo de Usuario -->
            <div class="login-input">
                <label for="username">Usuario</label>
                <input type="text" id="username" name="username" required>
            </div>
            
            <!-- Campo de Contraseña -->
            <div class="login-password">
                <label for="password">Contraseña</label>
                <input type="password" id="password" name="password" required>
            </div>
            
            <!-- Botón de Login -->
            <div class="login-button">
                <input type="submit" value="Ingresar">
            </div>
        </form>
        
        <!-- Botón de Volver -->
        <div class="volver">
            <a href="index.jsp">Volver</a>
        </div>
    </div>
</body>
</html>


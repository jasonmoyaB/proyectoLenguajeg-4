<%-- 
    Document   : login
    Created on : 22 feb. 2025, 11:04:04
    Author     : jason
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles/stylePassword.css"/>
        <title>Login</title>
    </head>
    <body>
        <form action="">
            <div class="login-container">
                <h1>Inicia sesión</h1>
                <div class="login-input">
                    <label for="">Usuario</label>
                    <input type="text" name="" id="usuario" required>
                </div>
                <div class="login-password">
                    <label for="">Contraseña</label>
                    <input type="text" name="" id="clave" required>
                </div>
                <div class="login-button">
                    <input type="button" value="Entrar" onclick="login()">

                </div>
                <div class="volver">
                    <a href="index.jsp">Volver</a>
                </div>

            </div>


        </form>

    </body>
</html>

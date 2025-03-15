<%-- 
    Document   : index
    Created on : 15 mar. 2025, 10:25:55
    Author     : jason
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bienvenido a la App de Tareas</title>
        <link rel="stylesheet" href="styles/style.css"/>
    </head>
    <body>
        <!-- Encabezado -->
        <header>
    <div class="header-container">
        <!-- Logo -->
        <a href="index.jsp" class="logo">CONDIGRAPH;</a>
        
       

        <!-- Menú de navegación -->
        <nav>
            <ul class="nav-links">
                <li><a href="index.jsp" class="nav-link">Inicio</a></li>
                <li><a href="about.jsp" class="nav-link">Acerca de</a></li>
                <li><a href="tasks.jsp" class="nav-link">Contacto</a></li>
                <li><a href="login.jsp" class="nav-link">Log in</a></li>
            </ul>
        </nav>

        
    </div>
</header>

        <!-- Imagen de fondo -->
        <div class="backimage">
            <div class="portada">
                <h1>Bienvenido a CONDIGRAPH;</h1>
                <p class="parrafoPortada">
                    Una aplicación sencilla y eficiente para gestionar tus tareas diarias.
                </p>
            </div>
        </div>

        <!-- Cuadros de información -->
        <div class="info-cuadros">
            <div class="cuadro">
                <h2>Agregar Tarea</h2>
                <p>Agrega nuevas tareas a tu lista y empieza a organizarlas.</p>
            </div>
            <div class="cuadro">
                <h2>Ver Tareas</h2>
                <p>Consulta las tareas pendientes y completadas de forma fácil y rápida.</p>
            </div>
            <div class="cuadro">
                <h2>Editar Tareas</h2>
                <p>Edita o elimina las tareas según lo necesites para mantener todo organizado.</p>
            </div>
        </div>

        <!-- Información adicional -->
        <!-- Información adicional -->
<div class="moreInfo">
    <div class="info">
        <div class="text">
            <h2>Gestiona tus tareas de manera fácil</h2>
            <p>La app de tareas te permite organizar y visualizar tus actividades en un solo lugar, con un diseño intuitivo que facilita el seguimiento de tus pendientes.</p>
        </div>
        
    </div>

    <!-- Información General Adicional -->
    <div class="info">
        <div class="text">
            <h2>Optimiza tu tiempo</h2>
            <p>Con nuestra aplicación, no solo organizas tareas, sino que también mejoras tu productividad con recordatorios y priorización de actividades.</p>
        </div>
       
    </div>

    <div class="info">
        <div class="text">
            <h2>Accesibilidad en todo momento</h2>
            <p>Accede a tus tareas desde cualquier dispositivo, en cualquier lugar. Nunca más se te olvidará una tarea importante.</p>
        </div>
       
    </div>
</div>


        <!-- Footer -->
        <footer>
            <div class="footer-content">
                <div class="footer-logo">
                    <h2>CODINGRAPH;</h2>
                </div>
                <div class="footer-links">
                    <a href="#" class="footer-link">Inicio</a>
                    <a href="about.jsp" class="footer-link">Acerca de</a>
                    <a href="contact.jsp" class="footer-link">Contacto</a>
                </div>
                
            </div>
            <div class="footer-bottom">
                <p>&copy; 2025 CODINGRAPH; - Todos los derechos reservados</p>
            </div>
        </footer>
    </body>
</html>


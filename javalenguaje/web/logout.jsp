<%-- 
    Document   : logout
    Created on : 22 feb. 2025, 15:50:48
    Author     : jason
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    // Invalidar la sesión actual si existe
    if (session != null) {
        session.invalidate(); // Elimina la sesión activa
    }

    // Redirigir al usuario a la página de login
    response.sendRedirect("login.jsp");
%>



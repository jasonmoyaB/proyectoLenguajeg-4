package controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import modelo.RolDAO;

import java.io.IOException;

@WebServlet("/AgregarRolServlet")
public class AgregarRolServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nombreRol = request.getParameter("nombre_rol");

        // Verifica si el nombre del rol está vacío
        if (nombreRol == null || nombreRol.trim().isEmpty()) {
            response.sendRedirect("bienvenido.jsp?error=rol_vacio");
            return;
        }

        RolDAO rolDAO = new RolDAO();

        // Aquí se agrega el rol con el nombre que llega del formulario
        if (rolDAO.agregarRol(nombreRol)) {
            response.sendRedirect("bienvenido.jsp");
        } else {
            response.sendRedirect("bienvenido.jsp?error=rol");
        }
    }
}


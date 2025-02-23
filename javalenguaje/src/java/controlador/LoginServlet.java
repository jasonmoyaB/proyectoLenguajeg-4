package controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import modelo.UsuarioDAO;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("usuario");
        String password = request.getParameter("clave");

        UsuarioDAO usuarioDAO = new UsuarioDAO();
        if (usuarioDAO.validarUsuario(username, password)) {
            String rol = usuarioDAO.obtenerRolUsuario(username, password); // Obtener el rol
            HttpSession session = request.getSession();
            session.setAttribute("user", username);
            session.setAttribute("role", rol); // Guardar el rol en la sesión
            response.sendRedirect("bienvenido.jsp");
        } else {
            response.sendRedirect("login.jsp?error=true");
        }
    }
}


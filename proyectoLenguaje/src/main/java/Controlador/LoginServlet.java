
package controlador;

import modelo.LoginDAO;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        LoginDAO loginDAO = new LoginDAO();
        
        if (loginDAO.validarUsuario(username, password)) {
            // Si el usuario es válido, guardamos su nombre en la sesión
            HttpSession session = request.getSession();
            session.setAttribute("usuario", username);
            
            // Redirigimos a la página de bienvenida
            response.sendRedirect("myTask.html");
        } else {
            // Si el usuario no es válido, mostramos un mensaje de error
            request.setAttribute("error", "Usuario o contraseña incorrectos");
            request.getRequestDispatcher("/login.html").forward(request, response);
        }
    }
}



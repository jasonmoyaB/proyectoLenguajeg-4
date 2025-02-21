
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
            // Si el usuario es v�lido, guardamos su nombre en la sesi�n
            HttpSession session = request.getSession();
            session.setAttribute("usuario", username);
            
            // Redirigimos a la p�gina de bienvenida
            response.sendRedirect("myTask.html");
        } else {
            // Si el usuario no es v�lido, mostramos un mensaje de error
            request.setAttribute("error", "Usuario o contrase�a incorrectos");
            request.getRequestDispatcher("/login.html").forward(request, response);
        }
    }
}



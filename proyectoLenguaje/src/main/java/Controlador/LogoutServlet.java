package controlador;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class LogoutServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.invalidate(); // Invalida la sesi�n (cierra sesi�n)
        response.sendRedirect("login.html"); // Redirige a la p�gina de login
    }
}

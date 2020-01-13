import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "AccessServlet", urlPatterns = "/access")
public class AccessServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();
        String username = (String)session.getAttribute("user");
        String password = (String)session.getAttribute("pass");
        boolean validAttempt = username.equals("admin") && password.equals("password");
        session.removeAttribute("pass");
        if (validAttempt) {
            session.setAttribute("isAdmin", true);
            request.getRequestDispatcher("/WEB-INF/admin-page.jsp").forward(request, response);
            return;
        }
            response.sendRedirect("/profile");
    }
}

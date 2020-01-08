package main.java;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "PongServlet", urlPatterns = "/pong")
public class PongServlet extends HttpServlet {



    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        res.setContentType("text/html");
        req.getParameter()
        PrintWriter pw = res.getWriter();
        pw.println("<form method=\"post\" action=\"./ping\">\n" +
                "\n" +
                "                    <button type=\"submit\">Pong</button>\n" +
                "\n" +
                "                </form>");
    }
}

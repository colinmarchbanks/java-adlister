package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "PongServlet", urlPatterns = "/pong")
public class PongServlet extends HttpServlet {

    int pong =0;

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        res.setContentType("text/html");
        PrintWriter pw = res.getWriter();
        pw.println("<h1>" + pong + " pongs</h1>");
        pong++;
        pw.println("<form method=\"get\" action=\"./ping\">\n" +
                "\n" +
                "                    <button type=\"submit\">Pong</button>\n" +
                "\n" +
                "                </form>");
    }
}

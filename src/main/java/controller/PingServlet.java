package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "PingServlet", urlPatterns = "/ping")
public class PingServlet extends HttpServlet {

    int ping = 0;

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        res.setContentType("text/html");
        PrintWriter pw = res.getWriter();
        pw.println("<h1>" + ping + " pings</h1>");
        ping++;
        pw.println("<form method=\"get\" action=\"./pong\">\n" +
                "\n" +
                "                    <button type=\"submit\">Ping</button>\n" +
                "\n" +
                "                </form>");
    }
}

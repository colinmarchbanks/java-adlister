package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "OrderFormServlet", urlPatterns = "/order-form")
public class OrderFormServlet extends HttpServlet {



    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        res.setContentType("text/html");
        PrintWriter pw = res.getWriter();
        pw.println("<form method=\"post\" action=\"./order-summary\">\n" +
                "\n" +
                "                    <label for=\"product\"><b>product</b></label>\n" +
                "                    <input type=\"text\" placeholder=\"Enter Product\" id=\"product\" name=\"product\" required><br><br>\n" +
                "\n" +
                "                    <label for=\"amount\"><b>amount</b></label>\n" +
                "                    <input type=\"text\" placeholder=\"Enter Amount\" id=\"amount\" name=\"amount\" required>\n" +
                "                    <br><br>\n" +
                "\n" +
                "                    <button type=\"submit\">Submit</button>\n" +
                "\n" +
                "                </form>");
    }
}

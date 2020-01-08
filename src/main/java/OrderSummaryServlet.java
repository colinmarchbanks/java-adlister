package main.java;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "OrderSummaryServlet", urlPatterns = "/order-summary")
public class OrderSummaryServlet extends HttpServlet {



    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        res.setContentType("text/html");
        PrintWriter pw = res.getWriter();
        String product = req.getParameter("product");
        String amount = req.getParameter("amount");
        pw.println("<h1>You have request " + amount + " of " + product + "</h1>");

    }
}

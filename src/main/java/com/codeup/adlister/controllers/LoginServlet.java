package com.codeup.adlister.controllers;

import com.codeup.adlister.Config.Config;
import com.codeup.adlister.dao.MySQLUsersDao;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "controllers.LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") != null) {
            response.sendRedirect("/profile");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        User possibleUser = null;

        // TODO: find a record in your database that matches the submitted password
        Config config = new Config();
        MySQLUsersDao usersDao = new MySQLUsersDao(config);
        List<User> users = usersDao.all();

        for(User user : users){
            if(user.getPassword().equals(password)){
               possibleUser = user;
            }
        }

        // TODO: make sure we find a user with that username
        // TODO: check the submitted password against what you have in your database

        boolean validAttempt = false;
        if(possibleUser.getUsername().equals(username)){
            if(possibleUser.getPassword().equals(password)){
                validAttempt = true;
            }
        }


        if (validAttempt) {
            // TODO: store the logged in user object in the session, instead of just the username
            request.getSession().setAttribute("user", possibleUser);
            response.sendRedirect("/profile");
        } else {
            response.sendRedirect("/login");
        }
    }
}

package com.nhom36.milkPowder.controllers;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(urlPatterns = "/Login")
public class LoginController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
          RequestDispatcher rd = request.getRequestDispatcher("/signIn_signUp_page/register.jsp");
            rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        if (email.equals("admin") && password.equals("admin")) {
            HttpSession session = request.getSession(true);
            session.setAttribute("email", email);
            response.sendRedirect("Home");

        }

    }
}

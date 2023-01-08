package com.nhom36.milkPowder.api;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(urlPatterns = "/MyServlet")
public class MyServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        PrintWriter out = resp.getWriter();
        if (name == null || email == null) {
            resp.setStatus(400);
            out.println("Name or email is empty");
        }
        if (name.equals("") || email.equals("")) {
            resp.setStatus(400);
            out.println("Name or email is empty");
            out.close();
        } else {
            out.println("Hello " + name + " " + email);
            out.close();
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("signin.jsp").forward(req, resp);
    }
}

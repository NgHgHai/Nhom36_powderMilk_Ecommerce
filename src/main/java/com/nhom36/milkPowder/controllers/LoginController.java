package com.nhom36.milkPowder.controllers;

import com.nhom36.milkPowder.beans.User;
import com.nhom36.milkPowder.services.UserService;
import com.nhom36.milkPowder.util.Define;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

@WebServlet(urlPatterns = "/Login")
public class LoginController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("signIn_signUp_page/login.jsp");
        String logout = request.getParameter("logout");
        if ("true".equals(logout)) {
            HttpSession session = request.getSession(true);
            session.setAttribute(Define.userSession, null);
        }


        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = new User();
        try {
            BeanUtils.populate(user, request.getParameterMap());

        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InvocationTargetException e) {
            throw new RuntimeException(e);
        }
//        String email = request.getParameter("email");
//        String password = request.getParameter("password");
        String email = user.getEmail();
        String password = user.getPassword();
        System.out.println(
                "email: " + email + "password: " + password
        );
        UserService userService = new UserService();
        if ((user = userService.login(email, password)) != null) {
            HttpSession session = request.getSession(true);
            session.setAttribute(Define.userSession, user);
            if (user.getRole() == 0) {
                response.sendRedirect("DashboardsController");
                // gui  ve dashnoard
            } else response.sendRedirect("Home");

        }else {
            request.setAttribute("mess", "Email or password is wrong!!!");
            RequestDispatcher rd = request.getRequestDispatcher("signIn_signUp_page/login.jsp");
            rd.forward(request, response);

        }
    }
}

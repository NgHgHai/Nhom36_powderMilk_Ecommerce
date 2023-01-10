package com.nhom36.milkPowder.controllers;

import com.nhom36.milkPowder.beans.User;
import com.nhom36.milkPowder.services.UserService;
import com.nhom36.milkPowder.util.StringUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "RegisterController", value = "/RegisterController")
public class RegisterController extends HttpServlet {
    RequestDispatcher rd ;
    UserService userService = new UserService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        rd = request.getRequestDispatcher("/signIn_signUp_page/register.jsp");
        rd.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("Password");
        String confirmPassword = request.getParameter("ConfirmPassword");


        System.out.println(name);
        System.out.println(email);
        System.out.println(password);
        System.out.println(confirmPassword);

                Boolean checkEmail = userService.checkEmail(email); // true la co mail

        if (checkEmail == false && password.equals(confirmPassword)) {
            User user = new User();
            String id = StringUtil.getIDWithLength(10);
            user.setId(id);
            user.setEmail(email);
            user.setPassword(password);
            user.setRole(1);
            user.setFirstname(name);
            userService.insert(user);
            request.setAttribute("mess", "Đăng kí thành công");
        }else
        request.setAttribute("mess", "Đăng kí thất bại");
        doGet(request,response);

    }
}

package com.nhom36.milkPowder.controllers.customerController;

import com.nhom36.milkPowder.beans.User;
import com.nhom36.milkPowder.services.UserService;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

@WebServlet(name = "ForgotPasswordPage", value = "/ForgotPassword")
public class ForgotPassword extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("signIn_signUp_page/forgotPassword.jsp");
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
        String email = user.getEmail();
        UserService userService = new UserService();
        boolean check = userService.checkEmail(email);
        if(check){
           user= userService.findUserEmail(email);

            // gui mail
            response.sendRedirect("Login");
        }
    }
}

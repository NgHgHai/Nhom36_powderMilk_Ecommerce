package com.nhom36.milkPowder.controllers.customerController;

import com.nhom36.milkPowder.beans.User;
import com.nhom36.milkPowder.services.CartService;
import com.nhom36.milkPowder.util.Define;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Header", value = "/Header")
public class HeaderController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                HttpSession session = request.getSession(true);
        User user = (User) session.getAttribute(Define.userSession);
//        String cartId = new CartService().getCartByUserId(user.getId()).getId();
        System.out.println(user.getAvatar());


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

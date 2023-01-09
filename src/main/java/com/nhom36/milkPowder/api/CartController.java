package com.nhom36.milkPowder.api;

import com.google.gson.Gson;
import com.nhom36.milkPowder.beans.Cart;
import com.nhom36.milkPowder.services.CartService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CartController", value = "/api/cart")
public class CartController extends HttpServlet {
    CartService cartService = new CartService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userId = request.getParameter("userId");
        Cart cart = cartService.getCartByUserId(userId);
        PrintWriter out = response.getWriter();
        String template = " <li class=\"list-group-item d-flex justify-content-between align-items-center\">\n" +
                "                                <div class=\"d-flex align-items-center\">\n" +
                "                                    <img src=\":pImage\" alt=\"\">\n" +
                "                                    <p class=\"fw-bold mb-1 p-3\">:pName </p>\n" +
                "                                    <p class=\"text-secondary mb-1 p-3 \"> :pPrice </p>\n" +
                "                                </div>\n" +
                "                            </li>";
        StringBuilder html = new StringBuilder();
        for (int i = 0; i < cart.getCartItemList().size(); i++) {
            String pImage = cart.getCartItemList().get(i).getProduct().getImgDisplay();
            String pName = cart.getCartItemList().get(i).getProduct().getName();
            double pPrice = cart.getCartItemList().get(i).getProduct().getPrice();
            html.append(template.replace(":pImage", pImage)
                    .replace(":pName", pName)
                    .replace(":pPrice", pPrice + ""));
        }
        out.print(html);
        out.close();
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

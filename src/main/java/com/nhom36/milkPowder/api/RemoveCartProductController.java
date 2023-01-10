package com.nhom36.milkPowder.api;

import com.nhom36.milkPowder.services.CartService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/api/cart/remove")
public class RemoveCartProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userId = request.getParameter("userId");
        String productId = request.getParameter("productId");
        CartService cartService = new CartService();
        cartService.removeProduct(userId, productId);
        response.getWriter().print("đã xóa thành công");
        response.getWriter().close();
    }
}

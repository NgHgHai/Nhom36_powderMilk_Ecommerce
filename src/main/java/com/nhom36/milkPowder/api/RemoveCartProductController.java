package com.nhom36.milkPowder.api;

import com.nhom36.milkPowder.beans.Cart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = "/api/cart/remove")
public class RemoveCartProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String quantity = request.getParameter("quantity");
        String productId = request.getParameter("id");
//        CartService cartService = new CartService();
        HttpSession session = request.getSession(true);

        Cart cart = (Cart) session.getAttribute("cart");
//        cartService.removeProduct(userId, productId);
        cart.deleteProd(productId, Integer.parseInt(quantity));
//        response.getWriter().print("đã xóa thành công");
        System.out.println("da xoa thanh cong");
//        response.getWriter().close();
    }
}

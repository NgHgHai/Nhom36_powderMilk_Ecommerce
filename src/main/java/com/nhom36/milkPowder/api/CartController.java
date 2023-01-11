package com.nhom36.milkPowder.api;

import com.nhom36.milkPowder.beans.Cart;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CartController", value = "/cart")
public class CartController extends HttpServlet {
//    CartService cartService = new CartService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        Cart cart= (Cart) session.getAttribute("cart");
        String id = request.getParameter("id");
        String quantity = request.getParameter("quantity");
        String deleteId = request.getParameter("deleteId");
        if (!"".equals(id) && "".equals(quantity)) {
            cart.add1Prod(id);
        }
        if (!"".equals(id) && !"".equals(quantity)){
            cart.addProd(id,Integer.parseInt(quantity));
        }
        if (!"".equals(deleteId) &&  "".equals(quantity)) {
            cart.delete1Prod(deleteId);
        }
        if (!"".equals(deleteId) &&  !"".equals(quantity)) {
            cart.deleteProd(deleteId,Integer.parseInt(quantity));
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

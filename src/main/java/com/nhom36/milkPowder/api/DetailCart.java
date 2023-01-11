package com.nhom36.milkPowder.api;

import com.nhom36.milkPowder.beans.Cart;
import com.nhom36.milkPowder.beans.Product;
import com.nhom36.milkPowder.beans.ProductCart;
import com.nhom36.milkPowder.services.ProductService;
import com.nhom36.milkPowder.util.Define;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

@WebServlet(name = "DetailCart", value = "/DetailCart")
public class DetailCart extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String cart = request.getParameter("cart");
        if (!"".equalsIgnoreCase(cart)) {
            HttpSession session = request.getSession();
            Cart cartBean = (Cart) session.getAttribute("cart");
            Map<String, Integer> map = cartBean.getCarts();
            List<ProductCart> products = new ArrayList<>();
            Set<String> keyProc = map.keySet();
            for (String key : keyProc) {
                ProductCart productCart =ProductService.getInstance().getproductCartById(key);
                productCart.setQuantity(map.get(key));
                products.add(productCart);
            }
            request.setAttribute("cart", cartBean);
            request.getRequestDispatcher("detailCart.jsp").forward(request, response);

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

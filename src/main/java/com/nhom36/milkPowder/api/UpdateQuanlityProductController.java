package com.nhom36.milkPowder.api;

import com.nhom36.milkPowder.beans.Cart;
import com.nhom36.milkPowder.beans.Product;
import com.nhom36.milkPowder.services.CartService;
import com.nhom36.milkPowder.services.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/api/cart/update")
public class UpdateQuanlityProductController extends HttpServlet {

    CartService cartService = new CartService();
    ProductService productService = new ProductService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userId = req.getParameter("userId");
        Cart cart = cartService.getCartByUserId(userId);

        String productId = req.getParameter("productId");
        int quantity = Integer.parseInt(req.getParameter("quantity"));

        Product product = productService.getById(productId);

        if (quantity > product.getInventory()) {
            resp.getWriter().print("Số lượng sản phẩm trong kho không đủ");
        } else {
            cartService.updateOrderItem(cart.getId(), productId, quantity);
//            productService.updateProductInventory(product.getId(), product.getInventory() - quanlity);
            resp.getWriter().print("Cập nhật thành công");
        }
        resp.getWriter().close();
    }
}

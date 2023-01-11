package com.nhom36.milkPowder.api;

import com.nhom36.milkPowder.beans.Cart;
import com.nhom36.milkPowder.beans.Product;
import com.nhom36.milkPowder.services.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(value = "/updateCart")
public class UpdateQuanlityProductController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    ProductService productService = new ProductService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(true);

        Cart cart = (Cart) session.getAttribute("cart");
//        cart = new Cart();
        String productId = req.getParameter("id");
        int quantity = Integer.parseInt(req.getParameter("quantity"));
        Product product = productService.getById(productId);
        System.out.println(productId + " - " + quantity + "  " + product.getInventory());

        if (quantity > product.getInventory()) {
//            resp.getWriter().print("Số lượng sản phẩm trong kho không đủ");
            System.out.println("khong du so luong");
        } else {
//            cartService.updateOrderItem(cart.getId(), productId, quantity);
            cart.addProd(productId, quantity);
            productService.updateProductInventory(product.getId(), product.getInventory() - quantity);
            System.out.println("cap nhat thanh cong");
            req.getRequestDispatcher("").forward(req,resp);
//            resp.getWriter().print("Cập nhật thành công");
        }
//        resp.getWriter().close();
    }
}

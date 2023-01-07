package com.nhom36.milkPowder.controllers.adminController;

import com.nhom36.milkPowder.beans.Product;
import com.nhom36.milkPowder.services.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductsController", value = "/ProductsController")
public class ProductsController extends HttpServlet {
    ProductService productService = new ProductService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String action = request.getParameter("action");
        if ("delete".equals(action)) {
            productService.delete(id);
            System.out.println("dang xoa");
            response.sendRedirect("/ProductsController?action=all");
        }
        if (action.equals("all")) {
            List<Product> products = productService.getAll();
            request.setAttribute("products",products);
            request.getRequestDispatcher("admin/products.jsp").forward(request,response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

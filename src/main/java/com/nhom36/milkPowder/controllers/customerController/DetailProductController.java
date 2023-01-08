package com.nhom36.milkPowder.controllers.customerController;

import com.nhom36.milkPowder.beans.Product;
import com.nhom36.milkPowder.services.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "product",urlPatterns = "/product")
public class DetailProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         String productId = String.valueOf(request.getParameter("id"));
            Product product = ProductService.getInstance().getById(productId);
            List<Product> listRelative = ProductService.getInstance().find5productByCategory(product.getCategory().getId());
            request.setAttribute("product", product);
            request.setAttribute("listRelative", listRelative);
            request.getRequestDispatcher("product/productDetail.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   doGet(request, response);
    }
}

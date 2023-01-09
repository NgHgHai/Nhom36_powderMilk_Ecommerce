package com.nhom36.milkPowder.controllers;

import com.nhom36.milkPowder.beans.Category;
import com.nhom36.milkPowder.beans.Product;
import com.nhom36.milkPowder.services.CategoryService;
import com.nhom36.milkPowder.services.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(name = "Home", urlPatterns = "/Home")
public class HomeController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CategoryService categoryService = new CategoryService();
        ProductService productService = new ProductService();
        List<Category> categories = categoryService.getAllCategory();

        Map<String, List<Product>> map = new HashMap<>();
        for(Category category: categories){
            List<Product> products = productService.findByCategory(category.getId());
            map.put(category.getName(), products);
        }
        request.setAttribute("map", map);
        RequestDispatcher rd = request.getRequestDispatcher("dashBoard.jsp");
        rd.forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           doGet(request, response);
    }
}

package com.nhom36.milkPowder.controllers.customerController;

import com.nhom36.milkPowder.beans.Category;
import com.nhom36.milkPowder.beans.Product;
import com.nhom36.milkPowder.services.CategoryService;
import com.nhom36.milkPowder.services.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ProductStore", value = "/ProductStore")
public class ProductsPage extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String cat = request.getParameter("cat");
        CategoryService cate = new CategoryService();
        ProductService pro = new ProductService();
        List<Category> categories = cate.getAllCategory();
        request.setAttribute("categories", categories);
        List<Product> listPro ;
           if (cat == null || cat.equals("all")) {
               listPro = pro.getAll();
           }
           else  {
                listPro = pro.findByCategory(cat);
       }
        request.setAttribute("listPro", listPro);
        RequestDispatcher rd = request.getRequestDispatcher("product/product.jsp");
        rd.forward(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);

}

}

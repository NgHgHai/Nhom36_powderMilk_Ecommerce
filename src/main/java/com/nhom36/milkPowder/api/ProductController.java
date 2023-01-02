package com.nhom36.milkPowder.api;

import com.nhom36.milkPowder.beans.Product;
import com.nhom36.milkPowder.services.ProductService;
import com.nhom36.milkPowder.util.JsonUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "ProductController", value = "/ProductController")
public class ProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         String action = request.getParameter("action");
            String id = request.getParameter("id");
            PrintWriter printWriter = response.getWriter();
            ProductService productService = new ProductService();

            if (action.equalsIgnoreCase("all")) {
                List<Product> products = productService.list();
                printWriter.println(new JsonUtil().toJSon(products));
            }
            if(id !=null){
                Product product = productService.findById(id);
                printWriter.print(new JsonUtil().toJSon(product));
            }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

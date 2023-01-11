package com.nhom36.milkPowder.controllers.customerController;

import com.nhom36.milkPowder.beans.Blog;
import com.nhom36.milkPowder.beans.Product;
import com.nhom36.milkPowder.services.BlogService;
import com.nhom36.milkPowder.services.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "BlogDisplay", urlPatterns = "/BlogDisplay")
public class BlogDisplayPage extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String BlogName = String.valueOf(request.getParameter("title"));
        Blog blogDetail = new BlogService().getByName(BlogName);
        request.setAttribute("blogDetail", blogDetail);
        System.out.println(blogDetail);
        request.getRequestDispatcher("blogDisplay.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         doGet(request, response);
    }
}

package com.nhom36.milkPowder.controllers.customerController;

import com.nhom36.milkPowder.beans.Blog;
import com.nhom36.milkPowder.services.BlogService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "blog",urlPatterns = "/Blog")
public class BlogController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Blog> blogs =  new BlogService().getLast();
           request.setAttribute("blogs", blogs);
           request.getRequestDispatcher("blog.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
               doGet(request, response);
    }
}

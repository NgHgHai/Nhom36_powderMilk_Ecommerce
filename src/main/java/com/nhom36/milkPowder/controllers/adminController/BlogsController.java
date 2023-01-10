package com.nhom36.milkPowder.controllers.adminController;

import com.nhom36.milkPowder.beans.Blog;
import com.nhom36.milkPowder.beans.Product;
import com.nhom36.milkPowder.services.BlogService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "BlogsController", value = "/BlogsController")
public class BlogsController extends HttpServlet {
    BlogService blogService = new BlogService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String action = request.getParameter("action");
        if ("delete".equals(action)) {
            blogService.delete(id);
            System.out.println("dang xoa");
            response.sendRedirect("/BlogsController?action=all");
        }
        if ("all".equals(action)) {
            List<Blog> blogs = blogService.getAll();
            request.setAttribute("blogs",blogs);
            request.getRequestDispatcher("admin/blogs.jsp").forward(request,response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

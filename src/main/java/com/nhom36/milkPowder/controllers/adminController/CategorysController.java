package com.nhom36.milkPowder.controllers.adminController;

import com.nhom36.milkPowder.beans.Category;
import com.nhom36.milkPowder.beans.Product;
import com.nhom36.milkPowder.services.CategoryService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CategorysController", value = "/CategorysController")
public class CategorysController extends HttpServlet {
    CategoryService categoryService = new CategoryService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String action = request.getParameter("action");
        if ("delete".equals(action)) {
            categoryService.delete(id);
            System.out.println("dang xoa");
            response.sendRedirect("/CategorysController?action=all");
        }
        if ("all".equals(action)) {
            List<Category> categories = categoryService.getAllCategory();
            request.setAttribute("categories",categories);
            request.getRequestDispatcher("admin/categorys.jsp").forward(request,response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

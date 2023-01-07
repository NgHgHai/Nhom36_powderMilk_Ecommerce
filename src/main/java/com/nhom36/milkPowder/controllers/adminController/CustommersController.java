package com.nhom36.milkPowder.controllers.adminController;

import com.nhom36.milkPowder.beans.Product;
import com.nhom36.milkPowder.beans.User;
import com.nhom36.milkPowder.services.ProductService;
import com.nhom36.milkPowder.services.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CustommersController", value = "/CustommersController")
public class CustommersController extends HttpServlet {
    UserService userService = new UserService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String action = request.getParameter("action");
        if ("delete".equals(action)) {
            userService.delete(id);
            System.out.println("dang xoa");
            response.sendRedirect("/CustommersController?action=all");
        }
        if ("all".equals(action)) {
            List<User> users = userService.getAllUser();
            request.setAttribute("users",users);
            request.getRequestDispatcher("admin/custommers.jsp").forward(request,response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}

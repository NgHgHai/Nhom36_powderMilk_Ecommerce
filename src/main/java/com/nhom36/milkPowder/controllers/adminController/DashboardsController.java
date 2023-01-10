package com.nhom36.milkPowder.controllers.adminController;

import com.nhom36.milkPowder.services.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AdminController", urlPatterns = "/DashboardsController")
public class DashboardsController extends HttpServlet {
    UserService userService = new UserService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("countClient",userService.countUser());
        RequestDispatcher rd = request.getRequestDispatcher("admin/dashBoard.jsp");
        rd.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

package com.nhom36.milkPowder.controllers.adminController;

import com.nhom36.milkPowder.beans.Order;
import com.nhom36.milkPowder.beans.User;
import com.nhom36.milkPowder.services.OrderService;
import com.nhom36.milkPowder.services.UserService;
import com.nhom36.milkPowder.util.Define;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminController", urlPatterns = "/DashboardsController")
public class DashboardsController extends HttpServlet {
    HttpSession session ;
    UserService userService = new UserService();
    OrderService orderService = new OrderService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        session =request.getSession(true);
//        User curentUser = (User) session.getAttribute(Define.userSession);
//        if (curentUser == null && curentUser.getRole() == 1 ) {
//            request.getRequestDispatcher("loii").forward(request,response);
//        }
//        request.setAttribute("curentUser",curentUser);

        request.setAttribute("countClient",userService.countUser());
        List<User> users = userService.getAllUser();
        request.setAttribute("users",users);
        List<Order> orders = orderService.getAllOrder();
        request.setAttribute("orders",orders);
//        List<User> Admins = userService.getAllAdmin();
//        request.setAttribute("Admins",Admins);
        RequestDispatcher rd = request.getRequestDispatcher("admin/dashBoard.jsp");
        rd.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

package com.nhom36.milkPowder.controllers.adminController;

import com.nhom36.milkPowder.beans.Order;
import com.nhom36.milkPowder.services.OrderService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "OrdersController", value = "/OrdersController")
public class OrdersController extends HttpServlet {
    OrderService orderService = new OrderService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id") ;
        String status = request.getParameter("status") ;

        if (!"".equals(id) && status != null) {
            orderService.updateStatus(id, Integer.parseInt(status));
        }
        List<Order> orders = orderService.getAllOrder();
        request.setAttribute("orders",orders);
        RequestDispatcher rd = request.getRequestDispatcher("admin/orders.jsp");
        rd.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

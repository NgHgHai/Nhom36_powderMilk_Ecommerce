package com.nhom36.milkPowder.controllers.adminController;

import com.nhom36.milkPowder.beans.Discount;
import com.nhom36.milkPowder.services.DiscountService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "DiscountsController", value = "/DiscountsController")
public class DiscountsController extends HttpServlet {
    DiscountService discountService = new DiscountService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String action = request.getParameter("action");
        if ("all".equals(action)) {
            List<Discount> discounts = discountService.getAllDiscount();
            request.setAttribute("discounts",discounts);
            request.getRequestDispatcher("admin/discounts.jsp").forward(request,response);
        }
        if ("delete".equals(action)) {
            discountService.delete(id);
            response.sendRedirect("/DiscountsController?action=all");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}

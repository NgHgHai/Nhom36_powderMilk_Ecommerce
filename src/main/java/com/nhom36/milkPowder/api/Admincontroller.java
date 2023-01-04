package com.nhom36.milkPowder.api;

import com.nhom36.milkPowder.util.JsonUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "AdminController", urlPatterns = "/AdminController")
public class Admincontroller extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String action = request.getParameter("action");
//
//        if (action.equalsIgnoreCase("all")) {
////            DiscountService discountService = new DiscountService();
////            List<Discount> discounts = discountService.getAllDiscount();
//
//
//            PrintWriter printWriter = response.getWriter();
//            printWriter.println(new JsonUtil().toJSon(discounts));
//            printWriter.flush();
//            printWriter.close();
//        }
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setAttribute("countClient",511);
        RequestDispatcher rd = request.getRequestDispatcher("admin/index.jsp");
        rd.forward(request,response);
    }
}

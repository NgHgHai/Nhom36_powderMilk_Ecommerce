package com.nhom36.milkPowder.controllers.adminController;

import com.nhom36.milkPowder.beans.Blog;
import com.nhom36.milkPowder.beans.Slider;
import com.nhom36.milkPowder.services.SliderService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "SlidersController", value = "/SlidersController")
public class SlidersController extends HttpServlet {
    SliderService sliderService = new SliderService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String action = request.getParameter("action");
        if ("delete".equals(action)) {
            sliderService.delete(id);
            System.out.println("dang xoa");
            response.sendRedirect("/SlidersController?action=all");
        }
        if ("all".equals(action)) {
            List<Slider> sliders = sliderService.getAll();
            request.setAttribute("sliders",sliders);
            request.getRequestDispatcher("admin/sliders.jsp").forward(request,response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}

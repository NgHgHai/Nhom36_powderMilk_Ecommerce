package com.nhom36.milkPowder.controllers.adminController;

import com.nhom36.milkPowder.beans.Product;
import com.nhom36.milkPowder.beans.Supplier;
import com.nhom36.milkPowder.services.SupplierService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "SuppliersController", value = "/SuppliersController")
public class SuppliersController extends HttpServlet {
    SupplierService  supplierService = new SupplierService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String action = request.getParameter("action");
        if ("delete".equals(action)) {
            supplierService.delete(id);
            response.sendRedirect("/SuppliersController?action=all");
        }
        if ("all".equals(action)) {
            List<Supplier>  suppliers = supplierService.getAll();
            request.setAttribute("suppliers",suppliers);
            request.getRequestDispatcher("admin/suppliers.jsp").forward(request,response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}


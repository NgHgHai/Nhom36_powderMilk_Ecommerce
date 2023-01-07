package com.nhom36.milkPowder.controllers.adminController;

import com.nhom36.milkPowder.beans.Category;
import com.nhom36.milkPowder.beans.Supplier;
import com.nhom36.milkPowder.services.SupplierService;
import com.nhom36.milkPowder.util.StringUtil;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

@WebServlet(name = "AddSuppliersController", value = "/AddSuppliersController")
public class AddSuppliersController extends HttpServlet {
    SupplierService supplierService = new SupplierService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        Supplier supplier = supplierService.getById(id);
        request.setAttribute("supplier", supplier);
        request.getRequestDispatcher("admin/addSupplier.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Supplier supplier = new Supplier();

        try {
            BeanUtils.populate(supplier, request.getParameterMap());

            if (supplier.getId() == null || supplier.getId().equals("")) {
                String id = StringUtil.getIDWithLength(10);
                supplier.setId(id);
                supplierService.insert(supplier);
                response.sendRedirect("/AddSuppliersController?id=" + id);
            } else {
                supplierService.updateProduct(supplier);
                request.setAttribute("mess", "Upload thanh cong");
                doGet(request, response);
                System.out.println("update");
            }



        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }
}

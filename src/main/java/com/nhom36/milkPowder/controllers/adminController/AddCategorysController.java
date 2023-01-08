package com.nhom36.milkPowder.controllers.adminController;

import com.nhom36.milkPowder.beans.Category;
import com.nhom36.milkPowder.services.CategoryService;
import com.nhom36.milkPowder.util.Define;
import com.nhom36.milkPowder.util.StringUtil;
import com.nhom36.milkPowder.util.UploadFileHelper;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

@WebServlet(name = "AddCategorysController", value = "/AddCategorysController")
public class AddCategorysController extends HttpServlet {
    CategoryService categoryService = new CategoryService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        Category category = categoryService.getById(id);
        request.setAttribute("category", category);
        request.getRequestDispatcher("admin/addCategory.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Category category = new Category();
        request.setCharacterEncoding("utf-8");
        try {
            BeanUtils.populate(category,request.getParameterMap());

            if (category.getId() == null || category.getId().equals("")) {
                String id = StringUtil.getIDWithLength(10);
                category.setId(id);
                categoryService.insert(category);
                response.sendRedirect("/AddCategorysController?id=" + id);
            } else {
                categoryService.update(category);
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

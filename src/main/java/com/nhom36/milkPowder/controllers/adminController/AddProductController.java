package com.nhom36.milkPowder.controllers.adminController;

import com.nhom36.milkPowder.beans.Product;
import com.nhom36.milkPowder.services.ProductService;
import com.nhom36.milkPowder.util.StringUtil;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

@WebServlet(name = "AddProductController", value = "/AddProductController")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
        maxFileSize = 1024 * 1024 * 10,      // 10 MB
        maxRequestSize = 1024 * 1024 * 100   // 100 MB
)
public class AddProductController extends HttpServlet {
    ProductService productService = new ProductService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("id");
        Product product = productService.getById(id);
        request.setAttribute("product", product);
        request.getRequestDispatcher("admin/addProduct.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Product product = new Product();

        handleUploadFile(request, response);
        try {
            BeanUtils.populate(product, request.getParameterMap());
            System.out.println(product);
            if (product.getId() == null || product.getId().equals("")) {
                String id = StringUtil.getIDWithLength(10);
                product.setId(id);
                productService.insert(product);
                response.sendRedirect("/AddProductController?id=" + id);
                System.out.println("insertt");
            } else {
                productService.updateProduct(product);
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

    void handleUploadFile(HttpServletRequest request, HttpServletResponse response) {
        try {
            Part part = request.getPart("imgDisplay");
            part.write("E:/" + part.getSubmittedFileName());
        } catch (IOException e) {
            throw new RuntimeException(e);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        }
    }
}

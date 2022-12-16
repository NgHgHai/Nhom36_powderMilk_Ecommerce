package com.nhom36.milkPowder.api;

import com.google.gson.Gson;
import com.nhom36.milkPowder.beans.NewProduct;
import com.nhom36.milkPowder.services.ProductService;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;

@WebServlet(name = "ApiProductController", value = "/api/product/*")
public class ApiProductController extends HttpServlet {
    ProductService productService = new ProductService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String path = req.getPathInfo();
        PrintWriter out = resp.getWriter();
        if (path.equals("/all")) {
            String json = new Gson().toJson(productService.getAll());
            out.println(json);
        } else {
            String id = path.substring(1);
            String json = new Gson().toJson(productService.getById(Integer.parseInt(id)));
            out.println(json);
        }
        out.close();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String path = req.getPathInfo();
        PrintWriter out = resp.getWriter();
        if (path.equals("/add")) {
            NewProduct product = new NewProduct();

            try {
                BeanUtils.populate(product, req.getParameterMap());
                productService.insert(product);
                out.println("success");

            } catch (IllegalAccessException | InvocationTargetException e) {
                out.println("fail");
                resp.setStatus(400);

            }

        }
        if (path.equals("/update")) {
            NewProduct product = new NewProduct();
            try {
                BeanUtils.populate(product, req.getParameterMap());
                productService.update(product);
                out.println("success");

            } catch (IllegalAccessException | InvocationTargetException e) {
                out.println("fail");
                resp.setStatus(400);

            }
        }
        out.close();
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String path = req.getPathInfo();
        PrintWriter out = resp.getWriter();
        if (path.equals("/delete")) {
            String id = req.getParameter("id");
            productService.delete(Integer.parseInt(id));
            out.println("success");
        }
        out.close();
    }
}

package com.nhom36.milkPowder.api;

import com.nhom36.milkPowder.beans.Product;
import com.nhom36.milkPowder.services.ProductService;
import com.nhom36.milkPowder.util.JsonUtil;
import com.nhom36.milkPowder.util.StringUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "ProductController", value = "/ProductController")
public class ProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        String id = request.getParameter("id");
        PrintWriter printWriter = response.getWriter();
        ProductService productService = new ProductService();

        if (action.equalsIgnoreCase("all")) {
            List<Product> products = productService.list();
            printWriter.println(new JsonUtil().toJSon(products));
        }
        if (id != null) {
            Product product = productService.findById(id);
            printWriter.print(new JsonUtil().toJSon(product));
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        PrintWriter printWriter = response.getWriter();
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        double price = Double.parseDouble(request.getParameter("price") != null ? request.getParameter("price") : "-1");
        String desc = request.getParameter("desc");
        double weightAmount = Double.parseDouble(request.getParameter("weightAmount") != null ? request.getParameter("weightAmount") : "-1");
        String weightUnits = request.getParameter("weightUnits");
        int active = Integer.parseInt(request.getParameter("active") != null ? request.getParameter("active") : "-1");
        int inventory = Integer.parseInt(request.getParameter("inventory") != null ? request.getParameter("inventory") : "-1");
        String supplierId = request.getParameter("supplierId");
        String categoryId = request.getParameter("categoryId");
        String discountId = request.getParameter("discountId");

        ProductService productService = new ProductService();

        Product product = new Product();
        boolean productIsExist = productService.findById(id) != null;
        boolean productIsNew = true;
        if (id != null && id.equalsIgnoreCase("")) {
            productIsNew = false;
            product = productService.findById(id);

        } else {
            product.setId(StringUtil.getIDWithLength(10));
        }
        product.setName(name);
        product.setPrice(price);
        product.setDesc(desc);
        product.setWeightAmount(weightAmount);
        product.setWeightUnits(weightUnits);
        product.setActive(active);
        product.setInventory(inventory);
        product.setSupplierId(supplierId);
        product.setCategoryId(categoryId);
        product.setDiscountId(discountId);




    }
}

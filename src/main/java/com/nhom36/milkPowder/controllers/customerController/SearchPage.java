package com.nhom36.milkPowder.controllers.customerController;

import com.nhom36.milkPowder.beans.Category;
import com.nhom36.milkPowder.beans.Product;
import com.nhom36.milkPowder.dao.ProductDAO;
import com.nhom36.milkPowder.services.CategoryService;
import com.nhom36.milkPowder.services.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Search", value = "/Search")
public class SearchPage extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String keyWord = request.getParameter("txtSearch");
        List<Product> findList = new ProductService().getProductbyText(keyWord);
        List<Category> categories = new CategoryService().getAllCategory();
        int total = findList.size();
        request.setAttribute("categories", categories);
        request.setAttribute("keyWord", keyWord);
        request.setAttribute("findList",findList);
        request.setAttribute("total", total);
        request.getRequestDispatcher("resultSearch.jsp").forward(request,response);
        for (Product product : findList) {
            System.out.println(product.getName());
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }

}

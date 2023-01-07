package com.nhom36.milkPowder.controllers.adminController;

import com.nhom36.milkPowder.beans.Category;
import com.nhom36.milkPowder.beans.Discount;
import com.nhom36.milkPowder.beans.Product;
import com.nhom36.milkPowder.beans.Supplier;
import com.nhom36.milkPowder.dao.SupplierDAO;
import com.nhom36.milkPowder.services.CategoryService;
import com.nhom36.milkPowder.services.DiscountService;
import com.nhom36.milkPowder.services.ProductService;
import com.nhom36.milkPowder.services.SupplierService;
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

@WebServlet(name = "AddProductController", value = "/AddProductController")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
        maxFileSize = 1024 * 1024 * 10,      // 10 MB
        maxRequestSize = 1024 * 1024 * 100   // 100 MB
)
public class AddProductController extends HttpServlet {
    ProductService productService = new ProductService();
    SupplierService supplierService = new SupplierService();
    CategoryService categoryService = new CategoryService();
    DiscountService discountService = new DiscountService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("id");
        Product product = productService.getById(id);
        List<Supplier>  suppliers = supplierService.getAll();
        List<Category> categories = categoryService.getAllCategory();
        List<Discount> discounts = discountService.getAllDiscount();
        request.setAttribute("discounts", discounts);
        request.setAttribute("categories", categories);
        request.setAttribute("suppliers", suppliers);
        request.setAttribute("product", product);
        request.getRequestDispatcher("admin/addProduct.jsp").forward(request, response);


    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Product product = new Product();
        String img;
//        handleUploadFile(request, response);
        try {
            BeanUtils.populate(product, request.getParameterMap());

            if (product.getId() == null || product.getId().equals("")) {
                String id = StringUtil.getIDWithLength(10);
                img = UploadFileHelper.uploadFile(Define.productFolder, request, "imgDisplay", id);
                product.setId(id);
                product.setImgDisplay(img);
                System.out.println(product);
                productService.insert(product);
                response.sendRedirect("/AddProductController?id=" + id);
            } else {
                img = UploadFileHelper.uploadFile(Define.productFolder, request, "imgDisplay", product.getId());
                if (img != null || !img.equals("")) {
                    product.setImgDisplay(img);
                }
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


}

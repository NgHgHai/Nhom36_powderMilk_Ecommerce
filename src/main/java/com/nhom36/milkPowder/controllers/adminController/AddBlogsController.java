package com.nhom36.milkPowder.controllers.adminController;

import com.nhom36.milkPowder.beans.Blog;
import com.nhom36.milkPowder.beans.Product;
import com.nhom36.milkPowder.services.BlogService;
import com.nhom36.milkPowder.util.Define;
import com.nhom36.milkPowder.util.StringUtil;
import com.nhom36.milkPowder.util.UploadFileHelper;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

@WebServlet(name = "AddBlogsController", value = "/AddBlogsController")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
        maxFileSize = 1024 * 1024 * 10,      // 10 MB
        maxRequestSize = 1024 * 1024 * 100   // 100 MB
)
public class AddBlogsController extends HttpServlet {
    BlogService blogService = new BlogService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        Blog blog = blogService.getById(id);
        request.setAttribute("blog",blog);
        request.getRequestDispatcher("admin/addBlog.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Blog  blog = new Blog();
        String img;
        request.setCharacterEncoding("utf-8");
        try {
            BeanUtils.populate(blog, request.getParameterMap());

            if (blog.getId() == null || blog.getId().equals("")) {
                String id = StringUtil.getIDWithLength(10);
                img = UploadFileHelper.uploadFile(Define.blogImageFolder, request, "image", id);
                blog.setId(id);
                blog.setImage(img);
                blogService.insert(blog);
                response.sendRedirect("/AddBlogsController?id=" + id);
            } else {
                img = UploadFileHelper.uploadFile(Define.blogImageFolder, request, "image", blog.getId());
                if (img != null || !img.equals("")) {
                    blog.setImage(img);
                }
                blogService.update(blog);
                request.setAttribute("mess", "Upload thanh cong");
                doGet(request, response);
                System.out.println("update");
            }
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InvocationTargetException e) {
            throw new RuntimeException(e);
        }
        System.out.println(blog);


    }
}

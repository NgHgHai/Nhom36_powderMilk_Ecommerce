package com.nhom36.milkPowder.controllers.adminController;

import com.nhom36.milkPowder.beans.Slider;
import com.nhom36.milkPowder.services.SliderService;
import com.nhom36.milkPowder.util.Define;
import com.nhom36.milkPowder.util.StringUtil;
import com.nhom36.milkPowder.util.UploadFileHelper;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

@WebServlet(name = "AddSliderController", value = "/AddSliderController")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
        maxFileSize = 1024 * 1024 * 10,      // 10 MB
        maxRequestSize = 1024 * 1024 * 100   // 100 MB
)
public class AddSliderController extends HttpServlet {
    SliderService sliderService = new SliderService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id  = request.getParameter("id");
        Slider  slider = sliderService.getById(id);
        request.setAttribute("slider",slider);
        request.getRequestDispatcher("admin/addSlider.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Slider slider = new Slider();
        String img;
        request.setCharacterEncoding("utf-8");
        try {
            BeanUtils.populate(slider, request.getParameterMap());
            if (slider.getId() == null || slider.getId().equals("")) {
                String id = StringUtil.getIDWithLength(10);
                img = UploadFileHelper.uploadFile(Define.sliderFolder, request, "image", id);
                slider.setId(id);
                slider.setImage(img);
                sliderService.insert(slider);
                response.sendRedirect("/AddSliderController?id=" + id);
            } else {
                img = UploadFileHelper.uploadFile(Define.sliderFolder, request, "image", slider.getId());
                if (img != null && !img.equals("")) {
                    slider.setImage(img);
                }
                sliderService.update(slider);
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

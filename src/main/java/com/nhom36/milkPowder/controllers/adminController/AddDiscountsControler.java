package com.nhom36.milkPowder.controllers.adminController;

import com.nhom36.milkPowder.beans.Discount;
import com.nhom36.milkPowder.services.DiscountService;
import com.nhom36.milkPowder.util.StringUtil;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

@WebServlet(name = "AddDiscountsControler", value = "/AddDiscountsControler")
public class AddDiscountsControler extends HttpServlet {
    DiscountService discountService = new DiscountService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        Discount discount = discountService.getById(id);
        request.setAttribute("discount",discount);
        request.getRequestDispatcher("admin/addDiscount.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Discount discount = new Discount();
        request.setCharacterEncoding("utf-8");
        try {
            BeanUtils.populate(discount,request.getParameterMap());
            System.out.println("chua lay ngay"+ discount);
            Map<String,String[]> m = request.getParameterMap();
            Set<String> set = m.keySet();
            for (String key : set) {
                System.out.println(key+"  ---  "+ Arrays.deepToString(m.get(key)));
                if ("-startAt".equals(key)) {
                    System.out.println("lay dc ngay hong ta+ : " +  m.get(key)[0] );
                    discount.setStartAt(LocalDateTime.parse(m.get(key)[0]));
                    System.out.println(discount);
                }
                if ("-finishAt".equals(key)) {
                    System.out.println("lay dc ngay hong ta+ : " +  m.get(key)[0] );
                    discount.setFinishAt(LocalDateTime.parse(m.get(key)[0]));
                    System.out.println(discount);
                }
            }
//            discountService.insert(discount);

            if (discount.getId() == null|| discount.getId().equals("")) {
                String id = StringUtil.getIDWithLength(10);
                discount.setId(id);
//                System.out.println(discount);
                discountService.insert(discount);
                response.sendRedirect("/AddDiscountsControler?id="+id);
            }else {
                discountService.update(discount);
                request.setAttribute("mess","upload thanh cong");
                doGet(request, response);
            }

        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }
}

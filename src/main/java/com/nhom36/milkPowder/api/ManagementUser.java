package com.nhom36.milkPowder.api;

import com.nhom36.milkPowder.beans.Order;
import com.nhom36.milkPowder.beans.Product;
import com.nhom36.milkPowder.beans.User;
import com.nhom36.milkPowder.services.OrderService;
import com.nhom36.milkPowder.services.UserService;
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

@WebServlet(name = "ManagementUser", value = "/ManagementUser")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
        maxFileSize = 1024 * 1024 * 10,      // 10 MB
        maxRequestSize = 1024 * 1024 * 100   // 100 MB
)
public class ManagementUser extends HttpServlet {
    RequestDispatcher rd;
    User user;
    HttpSession session;
    OrderService orderService = new OrderService();
    UserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        session = request.getSession(true);
        user = (User) session.getAttribute(Define.userSession);
        if (user == null) {
            rd = request.getRequestDispatcher("signIn_signUp_page/login.jsp");
            rd.forward(request, response);

        } else {
            String action = request.getParameter("action");
            request.setAttribute("user", user);
            List<Order> orders = orderService.getListOrderByUserId(user.getId());
            request.setAttribute("orders", orders);
            request.setAttribute("mess",request.getParameter("mess"));
            if ("show".equals(action)) {
                rd = request.getRequestDispatcher("/customer_page/customerManagement.jsp");
                request.setAttribute("action", 1);
            }
            if ("changeInfoAcc".equals(action)) {
                rd = request.getRequestDispatcher("/customer_page/accountInformation.jsp");
                request.setAttribute("action", 2);
            }
            if ("order".equals(action)) {
                rd = request.getRequestDispatcher("/customer_page/listOrders.jsp");
                request.setAttribute("action", 3);
            }
            if ("changePass".equals(action)) {
                rd = request.getRequestDispatcher("/customer_page/changePassword.jsp");
                request.setAttribute("action", 4);
            }

            rd.forward(request, response);

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        session = request.getSession(true);
        user = (User) session.getAttribute(Define.userSession);
        String img = null;
        request.setCharacterEncoding("utf-8");

        try {
            BeanUtils.populate(user, request.getParameterMap());
            img = UploadFileHelper.uploadFile(Define.avatarFolder, request, "avatar", user.getId());
            if (img != null && !"".equals(img)) {
                user.setAvatar(img);
            }
            userService.update(user);
            request.setAttribute("mess", "Upload Thành Công");
            doGet(request, response);
            System.out.println("update");
//            }
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }
}

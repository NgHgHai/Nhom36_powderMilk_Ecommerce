package com.nhom36.milkPowder.api;

import com.nhom36.milkPowder.beans.User;
import com.nhom36.milkPowder.services.UserService;
import com.nhom36.milkPowder.util.Define;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ChangePass", value = "/ChangePass")
public class ChangePass extends HttpServlet {
    UserService userService = new UserService();
    RequestDispatcher rd;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.sendRedirect("/ManagementUser?action=changePass");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String oldPass = request.getParameter("password");
        String newPass = request.getParameter("passwordNew");
        String repeatPass = request.getParameter("passwordConfirm");
        String id = request.getParameter("id");

        System.out.println("id: " + id);
        System.out.println("ond: "+oldPass);
        System.out.println("new pass: "+newPass +"length : "+ newPass.length());
        System.out.println("prepeat: "+repeatPass);
        HttpSession session = request.getSession(true);
        User curentUser = (User) session.getAttribute(Define.userSession);
        request.setAttribute("user",curentUser);
        User user = userService.getByIdAndPass(id, oldPass);
//        System.out.println(user.getPassword());
        rd = request.getRequestDispatcher("/customer_page/changePassword.jsp");
        if (user == null) {
            request.setAttribute("mess", "sai mật khẩu cũ");
            System.out.println("deo có user ");
            rd.forward(request,response);
        }else
        if (!newPass.equals(repeatPass)) {
            request.setAttribute("mess", "mật khẩu mới không giống nhau");
            System.out.println("mk khong giong nhau ");
            rd.forward(request,response);
        }else
         if (newPass.length() <= 8) {
            request.setAttribute("mess", "phải dài hơn 8 kí tự");
            System.out.println("d888888888888888888888888");
            rd.forward(request,response);
        }else {
//            user.setPassword(newPass);
//            userService.update(user);
//            request.setAttribute("mess", "Cập nhật thành công");
             System.out.println("cap nhat thanh cong");
             rd.forward(request, response);
         }


    }
}

package com.nhom36.milkPowder.controllers.adminController;


import com.nhom36.milkPowder.beans.User;
import com.nhom36.milkPowder.emun.Role;
import com.nhom36.milkPowder.util.Define;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = "/admin_admin")
public class AdminsController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(true);
        User user = (User) session.getAttribute(Define.userSession); // lấy ra user
        // Nếu(user == null){
            req.getRequestDispatcher("admin/view/login.jsp").forward(req,resp);
            return;
        // }
//        if(user==null || user.getRole()== Role.CUSTOMER){
//            resp.sendRedirect("Login");
//            return;
//        }
//        req.getRequestDispatcher("admin/view/login.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}

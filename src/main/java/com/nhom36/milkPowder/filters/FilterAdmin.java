package com.nhom36.milkPowder.filters;

import com.nhom36.milkPowder.beans.User;
import com.nhom36.milkPowder.util.Define;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.util.Date;

@WebFilter(filterName = "/admin_admin")
public class FilterAdmin implements Filter {
    public void init(FilterConfig config) throws ServletException {
        String testParam = config.getInitParameter("test-param");

        System.out.println("Test Param: " + testParam);
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;

        HttpSession session = httpRequest.getSession(true);
        User user = (User) session.getAttribute(Define.userSession);

        if (user == null || user.getRole() != 0) {
//            httpResponse.sendRedirect("/Login");

            httpRequest.getRequestDispatcher("index.jsp").forward(request, response);
            System.out.println("da nhay vo null");
        }else {
        String ipAddress = request.getRemoteAddr();
        // Log the IP address and current timestamp.
        System.out.println("IP " + ipAddress + ", Time "
                + new Date().toString());
        httpRequest.setAttribute("curentUser", user);
        httpRequest.getRequestDispatcher("/DashboardsController").forward(request, response);}
//
//        String ipAddress = request.getRemoteAddr();
//        // Log the IP address and current timestamp.
//        System.out.println("IP " + ipAddress + ", Time "
//                + new Date().toString());

        // Pass request back down the filter chain
        chain.doFilter(request, response);
    }

    public void destroy() {

    }
}

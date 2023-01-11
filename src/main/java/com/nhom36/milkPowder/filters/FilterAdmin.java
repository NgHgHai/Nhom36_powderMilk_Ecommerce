package com.nhom36.milkPowder.filters;

import javax.servlet.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Date;

@WebFilter(filterName = "/admin_admin")
public class FilterAdmin implements Filter {
    public void init(FilterConfig config) throws ServletException {
        String testParam = config.getInitParameter("test-param");
        System.out.println("Test Param: " + testParam);
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        chain.doFilter(request, response);
        String ipAddress = request.getRemoteAddr();
        // Log the IP address and current timestamp.
        System.out.println("IP "+ ipAddress + ", Time "
                + new Date().toString());

        // Pass request back down the filter chain
        chain.doFilter(request,response);
    }

    public void destroy() {

    }
}

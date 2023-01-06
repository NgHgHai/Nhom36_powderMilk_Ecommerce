package com.nhom36.milkPowder.filters;

import javax.servlet.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebFilter(filterName = "EncodingFilter")
public class EncodingFilter implements Filter {
    private String encoding = "utf-8";
    private ServletRequest request;
    private ServletResponse response;
    private FilterChain filterChain;




    public void init(FilterConfig config) throws ServletException {
        String encodingParam =
                config.getInitParameter("encoding");
        if (encodingParam != null) {
            encoding = encodingParam;
        }
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        chain.doFilter(request, response);
        this.request = request;
        this.response = response;
        this.filterChain = chain;
        request.setCharacterEncoding(encoding);
        response.setCharacterEncoding(encoding);
        chain.doFilter(request, response);
    }
}

package com.boda.login;

import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebFilter
public class Filter implements jakarta.servlet.Filter {
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;

        // 获取当前请求的路径
        String path = req.getRequestURI().substring(req.getContextPath().length());

        // 不需要检查登录的路径
        if (path.equals("/") ||
                path.equals("/index.jsp") ||
                path.equals("/register.jsp") ||
                path.startsWith("/Login") ||
                path.startsWith("/Register") ||
                path.startsWith("/Logout") ||
                path.endsWith(".css") ||
                path.endsWith(".js") ||
                path.endsWith(".png") ||
                path.endsWith(".jpg") ||
                path.endsWith(".gif") ||
                path.endsWith(".ico")) {

            // 这些请求不需要
            chain.doFilter(request, response);
            return;
        }

        // 检查session中是否有username1
        HttpSession session = req.getSession(false);

        // 如果没有登录，请求转发到登录页面
        if (session == null || session.getAttribute("username1") == null) {
            req.getRequestDispatcher("/index.jsp").forward(req, res);
            return;
        }

        // 已登录，继续处理请求
        chain.doFilter(request, response);
    }
}

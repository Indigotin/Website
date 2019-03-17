package com.cqut.Filter;


import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

public class LoginFilter implements Filter {

    public static List<String> pattenURL = new ArrayList<>();

    public void init(FilterConfig filterConfig) throws ServletException {

        pattenURL.add("/login");// 登录jsp
        pattenURL.add("/checkAccount");// 登录方法
        pattenURL.add("css");// css
        pattenURL.add("img");// image
        pattenURL.add("js");// js
        pattenURL.add("fonts");// fonts
    }

    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {

        HttpServletRequest httpRequest = (HttpServletRequest) servletRequest;
        HttpServletResponse httpServletResponse = (HttpServletResponse)servletResponse;

        //事前设置好的页面不做处理
        String uri = httpRequest.getRequestURI();
        for (String urlStr : pattenURL) {
            if (uri.indexOf(urlStr) > -1) {
                filterChain.doFilter(servletRequest, servletResponse);
                return;
            }
        }

        if(uri.endsWith("/login") || uri.endsWith("/servlet/checkAccount")) {
            filterChain.doFilter(servletRequest, servletResponse);
            return;
        }

        HttpSession httpSession = httpRequest.getSession();
        System.out.print(httpSession.getAttribute("user_name"));
        if(httpSession.getAttribute("user_name") == null) {
            System.out.print("未登录！");
            httpServletResponse.sendRedirect("/website/jsp/login.jsp");
        }
        else {
            System.out.print("已登录！");
            filterChain.doFilter(servletRequest, servletResponse);
        }
    }

    public void destroy() {

    }
}

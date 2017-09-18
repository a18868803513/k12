package com.k12.web;

import com.k12.domain.Tb_User;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Administrator on 2017/9/16/016.
 */
public class LoginFifter implements Filter {
    private String[] arr={"login","register"};
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        String url=request.getRequestURI();
        System.out.println(url);
        for (int i=0;i<arr.length;i++) {
            if (url.contains(arr[i])) {
                filterChain.doFilter(request, response);
            }
        }
        if (url.equals("/k12/")){
            filterChain.doFilter(request, response);
        }
        System.out.println("========="+url);
        Tb_User user=(Tb_User)request.getSession().getAttribute("user");
        if (user==null){



        }else {
            filterChain.doFilter(request, response);
        }
        filterChain.doFilter(request, response);


    }

    @Override
    public void destroy() {

    }
}

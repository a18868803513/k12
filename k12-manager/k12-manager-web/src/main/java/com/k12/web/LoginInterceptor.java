package com.k12.web;

import com.k12.domain.Tb_User;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by Administrator on 2017/9/12/012.
 */
public class LoginInterceptor implements HandlerInterceptor {
    private String[] arr={"login","register","Register"};
    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        String url=httpServletRequest.getRequestURI();
        for (int i=0;i<arr.length;i++) {
            if (url.contains(arr[i])) {
                return true;
            }
        }
        if (url.equals("/k12/")){
            return true;
        }
        System.out.println(url);
        Tb_User user=(Tb_User)httpServletRequest.getSession().getAttribute("user");
        if (user==null){
            httpServletRequest.getRequestDispatcher("login").forward(httpServletRequest,httpServletResponse);
        }else {
            return true;
        }
        return false;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {


    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}

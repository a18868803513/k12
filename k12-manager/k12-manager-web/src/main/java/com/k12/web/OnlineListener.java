package com.k12.web;


import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Created by Administrator on 2017/9/13/013.
 */
public class OnlineListener implements HttpSessionListener,ServletContextListener {
    private static int i=0;
    @Override
    public void sessionCreated(HttpSessionEvent httpSessionEvent) {
        i++;
        httpSessionEvent.getSession().getServletContext().setAttribute("num",i);
        System.out.println("session创建在线人数为:"+i);
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent httpSessionEvent) {
        i--;
        httpSessionEvent.getSession().getServletContext().setAttribute("num",i);
        System.out.println("session销毁在线人数为:"+i);
    }
    public static int getCount() {
        return i;
    }

    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        servletContextEvent.getServletContext().setAttribute("num",i);
        System.out.println("初始化，在线人数为:"+i);
    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {

    }
}

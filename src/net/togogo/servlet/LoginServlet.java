package net.togogo.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println(req.getMethod());
        System.out.println(req.getParameter("userName"));
        System.out.println(req.getParameter("password"));

        String userName = req.getParameter("userName");
        String pwd = req.getParameter("password");
        //匹配帐号密码，匹配成功则跳转至登陆成功页面
        if (null != userName && null != pwd){

        }


        //失败则跳回登录页面
    }
}

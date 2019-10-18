package net.togogo.servlet;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import net.togogo.bean.easybuy_user;
import net.togogo.service.impl.eBuyServiceImpl;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/regist")
public class RegistServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("拦截");
        //获取用户注册信息
        String userName = req.getParameter("userName");
        String password = req.getParameter("password");
        String passwordAgain = req.getParameter("passwordAgain");
        String mail = req.getParameter("mail");
        String phone = req.getParameter("phone");
        String member = req.getParameter("member");
        String id = req.getParameter("id");
        String test = req.getParameter("test");

        boolean flag = true;

        //查询用户表，判断用户是否存在
        QueryRunner queryRunner = new QueryRunner(new ComboPooledDataSource());
        String sql = "select * from easybuy_user";
        BeanListHandler<easybuy_user> beanListHandler = new BeanListHandler<>(easybuy_user.class);
        try {
            List<easybuy_user> object = queryRunner.query(sql,beanListHandler);
            System.out.println("-----------------");
            System.out.println(object);
            System.out.println("-----------------");
            System.out.println(userName);
            if(null != object) {
                System.out.println(userName);
                for(easybuy_user easybuy_user : object) {
                    if (easybuy_user.getLoginName().equals(userName)) { //用户名存在
                        flag = true;
                        break;
                    } else {//用户名不存在
                        flag = false;
                    }
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        System.out.println(flag);
        resp.getWriter().print(flag); //返回判断结果到页面
    }
}

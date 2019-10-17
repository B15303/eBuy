package net.togogo.servlet;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import org.apache.commons.dbutils.QueryRunner;

import net.togogo.bean.easybuy_user;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {



    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        System.out.println(req.getMethod());
//        System.out.println(req.getParameter("userName"));
//        System.out.println(req.getParameter("password"));

        boolean flag = true;


        String userName = req.getParameter("userName");
        String pwd = req.getParameter("password");
        //AJAX匹配帐号密码，匹配成功则可以直接登录，匹配失败则无法登录
        QueryRunner queryRunner = new QueryRunner(new ComboPooledDataSource());
        String sql = "select * from easybuy_user";
        BeanListHandler<easybuy_user> beanListHandler = new BeanListHandler<>(easybuy_user.class);
        try {
            List<easybuy_user> object = queryRunner.query(sql,beanListHandler);
            if (null != object){
                for (easybuy_user easybuy_user:object){
                    if (easybuy_user.getLoginName().equals(userName)){
                        flag = true;
                        break;
                    }else {
                        flag = false;
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        resp.getWriter().print(flag);
    }
}

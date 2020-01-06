package cn.bdqn.servlet;

import netscape.javascript.JSObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * @Author: Mr.Zhou
 * @Date 2020/1/6
 * @Explain:
 */
@WebServlet(name = "AjaxServlet",urlPatterns = "/AjaxServlet")
public class AjaxServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        String mobile = request.getParameter("mobile");
        PrintWriter out = response.getWriter();
        if ("1222222".equals(mobile)) {
            //out.print("true");
            //如果使用$("#sp").load实现异步刷新则不需要返回trye或者false直接返回结果
            //out.print("注册失败，号码已存在!");
            //如果使用getJSON实现异步刷新则
            out.print("{\"mobile\":\"true\"}");
        } else {
          //  out.print("false");
            //out.print("注册成功!");
            out.print("{\"mobile\":\"false\"}");
        }
        out.close();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}

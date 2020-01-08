package cn.bdqn.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * @Author: Mr.Zhou
 * @Date 2020/1/8
 * @Explain:
 */
@WebServlet(name = "Index3Servlet", urlPatterns = "/Index3Servlet")
public class Index3Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        String userName=request.getParameter("name");
        PrintWriter out = response.getWriter();

        if ("13814656495".equals(userName)){
          out.print("true");
        }else{
           out.print("false");
        }
        out.flush();
        out.close();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}

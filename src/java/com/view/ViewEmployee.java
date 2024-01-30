package com.view;

import com.db.LoginDAO;
import java.io.IOException;
import java.sql.ResultSet;
import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

@WebServlet("/servletJsp")
public class ViewEmployee extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Resource(name = "")
    private DataSource dataSource;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String page;
        if (request.getParameterMap().containsKey("page")) {
            page = request.getParameter("page");
        } else {
            page = "index";
        }
        if (page.equals("table")) {
            ResultSet rs = new LoginDAO().getEmployee(dataSource);
            request.setAttribute("employees", rs);
            request.getRequestDispatcher("View Employee.jsp").forward(request, response);
        }

    }
}

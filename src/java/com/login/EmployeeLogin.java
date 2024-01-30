package com.login;

import com.db.LoginDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class EmployeeLogin extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String Username = request.getParameter("EmpEmail");
        String Password = request.getParameter("EmpPass");

        LoginDAO dao = new LoginDAO();
        if (dao.checkEmployee(Username, Password)) {
            HttpSession session = request.getSession();
            session.setAttribute("EmpEmail", Username);
            response.sendRedirect("Welcome Employee.jsp");
        } else {
            response.sendRedirect("Homepage.jsp");
        }
    }

}

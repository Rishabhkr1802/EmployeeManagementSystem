//package com.login;
//
//import com.db.LoginDAO;
//import java.io.IOException;
//import java.nio.file.Files;
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//public class AdminLogin extends HttpServlet{
//
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//        String Username = request.getParameter("id");
//        String Password = request.getParameter("pass");
//
//        LoginDAO dao = new LoginDAO();
//        if (dao.check(Username, Password)) {
//            HttpSession session = request.getSession();
//            session.setAttribute("yo", Username);
//            response.sendRedirect("Welcome.jsp");
//        } else {
//            response.sendRedirect("Login.jsp");
//        }
//    }
//
//}

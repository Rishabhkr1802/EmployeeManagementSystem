package com.login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AdminLogout extends HttpServlet{
            public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException , IOException{
                HttpSession session=req.getSession();
                session.removeAttribute("AdminUsername");
                session.invalidate();
                res.sendRedirect("Homepage.jsp");
            }
}

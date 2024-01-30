package com.register;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AddLeaves extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String empName = null;
        HttpSession session = request.getSession();
        
        empName = session.getAttribute("EmpEmail").toString();
        String from = request.getParameter("from");
        String to = request.getParameter("to");
        String reason = request.getParameter("reason");
        String grant = request.getParameter("grant_leave");
               
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ems?", "root", "root");
            PreparedStatement st = con.prepareStatement("insert into emp_leave values(?,?,?,?,?)");
            st.setString(1, empName);
            st.setString(2, from);
            st.setString(3, to);
            st.setString(4, reason);
            st.setString(5, grant);
            st.executeUpdate();
            response.sendRedirect("leaveRequestAck.jsp");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

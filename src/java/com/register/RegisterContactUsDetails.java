package com.register;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegisterContactUsDetails extends HttpServlet{

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name = request.getParameter("C_name");
        String mail = request.getParameter("C_mail");
        String contact = request.getParameter("C_contact");
        String address = request.getParameter("C_address");
        String message = request.getParameter("C_reason");

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ems?", "root", "root");
            PreparedStatement st = con.prepareStatement("insert into contact_us values(?,?,?,?,?)");
            st.setString(1, name);
            st.setString(2, mail);
            st.setString(3, contact);
            st.setString(4, address);
            st.setString(5, message);
            st.executeUpdate();
            response.sendRedirect("Add Contact.jsp");

        } catch (Exception e) {
            e.printStackTrace();
        }
    } 
}

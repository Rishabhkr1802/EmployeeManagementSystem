package com.register;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddEmployee extends HttpServlet{

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String age = request.getParameter("age");
        String gender = request.getParameter("gender");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String state = request.getParameter("state");
        String password = request.getParameter("password");
        String doj = request.getParameter("doj");

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ems?", "root", "root");
            PreparedStatement st = con.prepareStatement("insert into employee values(?,?,?,?,?,?,?,?,?)");
            st.setString(1, firstname);
            st.setString(2, lastname);
            st.setString(3, age);
            st.setString(4, gender);
            st.setString(5, email);
            st.setString(6, address);
            st.setString(7, state);
            st.setString(8, password);
            st.setString(9, doj);
            st.executeUpdate();
            response.sendRedirect("Add Employee Successfully.jsp");

        } catch (Exception e) {
            e.printStackTrace();
        }
    } 
}

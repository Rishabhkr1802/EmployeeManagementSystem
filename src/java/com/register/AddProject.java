package com.register;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddProject extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String projectname = request.getParameter("proj_name");
        String projectid = request.getParameter("proj_id");
        String projectcategory = request.getParameter("proj_cat");
//        String startdate = request.getParameter("start_date");
        String duration = request.getParameter("dur");
        String projecthead = request.getParameter("managed_by");

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ems?", "root", "root");
            PreparedStatement st = con.prepareStatement("insert into project values(?,?,?,?,?)");
            st.setString(1, projectid);
            st.setString(2, projectname);
            st.setString(3, duration);
            st.setString(4, projectcategory);
            st.setString(5, projecthead);
            st.executeUpdate();
            response.sendRedirect("Add Project Successfully.jsp");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

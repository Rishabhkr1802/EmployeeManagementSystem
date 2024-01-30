package com.db;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.sql.DataSource;

public class LoginDAO extends HttpServlet {

    public boolean checkAdmin(String user, String pass) {

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ems?", "root", "root");
            PreparedStatement st = con.prepareStatement("select * from ad_login where ad_id=? and Password=?");
            st.setString(1, user);
            st.setString(2, pass);
            ResultSet rs = st.executeQuery();

            if (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean checkEmployee(String user, String pass) {

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ems?", "root", "root");
            PreparedStatement st = con.prepareStatement("select * from employee where email=? and password=?");
            st.setString(1, user);
            st.setString(2, pass);
            ResultSet rs = st.executeQuery();

            if (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    private ResultSet employees = null;

    public ResultSet getEmployee(DataSource dataSource) {
        String query = "select * from employee";

        try {
            Connection con = dataSource.getConnection();
            Statement st = con.createStatement();

            employees = st.executeQuery(query);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return employees;
    }
}

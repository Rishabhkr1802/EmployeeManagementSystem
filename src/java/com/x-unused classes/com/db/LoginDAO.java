//package com.db;
//
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//
//public class LoginDAO { 
//
//    
//    try {
//        Class.forName("com.mysql.jdbc.Driver");
//        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/loginservlet", "root", "root");
//        PreparedStatement st = con.prepareStatement("select * from Employee where email=? and password=?");
//        st.setString(1, user);
//        st.setString(2, pass1);
//        ResultSet rs = st.executeQuery();
//        if (rs.next()) {
//            return true;
//        }
//
//    }
//    catch (Exception e) {
//            e.printStackTrace();
//    }
//
//    return false;
//    }
//    
//}

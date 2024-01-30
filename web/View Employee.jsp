<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
    String driver = "com.mysql.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost:3306/";
    String database = "ems?";
    String userid = "root";
    String password = "root";
    try {
        Class.forName(driver);
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List of Employees</title>
        <link rel="stylesheet" href="Style.css" type="text/css" />
        <style>
            h2{
                display: inline-block;
                margin-left: 180px;
                color: white;
                text-shadow: 2px 3px 4px black;
                font-family: Times new roman;
                border-radius: 20px;
            }
            .set{
                font-size: 25px;
                color: red;
                text-shadow: 1px 2px 3px salmon;
            }
            table {
                padding: 15px;
                margin-left: 6pc;
                border: 2px solid black;
                background-color: lightgoldenrodyellow;
            }
            th {
                font-size: 28px;
                font-weight: bold;
                padding: 5px;
                border: 2px solid black;
            }
            td{
                font-size: 20px;
                padding: 5px;
                margin: 2px;
                border: 1px solid black;
                box-shadow: 1px 2px 3px black;
                border-radius: 5px;
            }
        </style>
    </head>
    <body>

        <%@include file="Header.jsp" %>
        <%@include file="Add Nav Horizontal.jsp" %>
        <h1 style="text-align: center; color: yellow; text-shadow: 1px 2px 4px gray,-1px -2px 4px salmon; font-size: 45px; font-family: cooper; background-color: red" >List of Employees</h1>
        
        <table border="1">
            <tr>
                <th>Name</th>
                <th>Age</th>
                <th>Gender</th>
                <th>Email</th>
                <th>Date of Joining</th>
                <th>State</th>
                <th>Address</th>

            </tr>
            <%
                try {
                    connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                    statement = connection.createStatement();
                    String sql = "select * from employee";
                    resultSet = statement.executeQuery(sql);
                    while (resultSet.next()) {
            %>
            <tr>
                <td><%=resultSet.getString("first_name")%> <%=resultSet.getString("last_name")%></td>
                <td><%=resultSet.getString("age")%></td>
                <td><%=resultSet.getString("gender")%></td>
                <td><%=resultSet.getString("email")%></td>
                <td><%=resultSet.getString("doj")%></td>
                <td><%=resultSet.getString("state")%></td>
                <td><%=resultSet.getString("address")%></td>

            </tr>
            <%
                    }
                    connection.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
        </table>
        <%@include file="Footer.jsp" %>
    </body>
</html>
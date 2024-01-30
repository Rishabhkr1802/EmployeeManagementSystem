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
                margin-left: 16pc;
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
            button {
                padding: 10px;
                margin-left: 35px;
                background-color: gold;
                color: white;
                text-shadow: 1px 2px 2px grey;
            }
            button:hover {
                padding: 10px;
                margin-left: 35px;
                background-color: red;
                text-shadow: 1px 2px 2px grey;
                color: white;
            }
        </style>
    </head>
    <body>
        <%@include file="Header.jsp" %>
        <%@include file="Add Nav Horizontal.jsp" %>
        <h1 style="text-align: center; color: yellow; text-shadow: 1px 2px 4px gray,-1px -2px 4px salmon; font-size: 45px; font-family: cooper; background-color: red" >Leaves Requests</h1>

        <table border="1">
            <tr>
                <th>Employee Name</th>
                <th>Leave from</th>
                <th>Leave To</th>
                <th>Reason</th>
                <th>Grant Leave</th>

            </tr>
            <%
                try {
                    connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                    statement = connection.createStatement();
                    String sql = "select * from emp_leave";
                    resultSet = statement.executeQuery(sql);
                    while (resultSet.next()) {
            %>
            <tr>
                <td><%=resultSet.getString("name")%></td>
                <td><%=resultSet.getString("leave_from")%></td>
                <td><%=resultSet.getString("leave_to")%></td>
                <td><%=resultSet.getString("reason")%></td>
                <td><button id ="btn" onclick="grant()">Grant</button></td>

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
        <script>
            function grant() {
//                var a = false;
//                if (a = 'true') {
//                    if (a === 'true'){console.log('Grant Success')}
//                }
//                return a;
                document.getElementById("btn").style.display = 'none';
            }

//            function grant(x, ele) {
//
//                var xhttp = new XMLHttpRequest();
//                xhttp.onreadystatechange = function () {
//                    if (this.readyState === 4 && this.status === 200) {
//                        ele.parentElement.parentElement.style = "display: none"
//                        alert("Leave Granted!");
//                    }
//                };
//                xhttp.open("GET", "grantLeave?id=" + x, true);
//                xhttp.send();
//            }

        </script>
    </body>
</html>
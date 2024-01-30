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
        <title>List of Project</title>
        <link rel="stylesheet" href="Style.css" type="text/css" />
        <style>
            h2{
                display: inline-block;
                margin-left: 30px;
                border-radius: 20px;
            }
            .set{
                font-size: 18px;
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
        </style>
    </head>
    <body>
        <%@include file="Header.jsp" %>
        <h1 style="text-align: center; color: yellow; text-shadow: 1px 2px 4px gray,-1px -2px 4px salmon; font-size: 45px; font-family: cooper; background-color: red" >List of Projects</h1>

        <table border="1">
            <tr>
                <th>Project Id</th>
                <th>Project Title name</th>
                <th>Duration</th>
                <th>Project Type</th>
                <th>Project Head</th>

            </tr>
            <%
                try {
                    connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                    statement = connection.createStatement();
                    String sql = "select * from project";
                    resultSet = statement.executeQuery(sql);
                    while (resultSet.next()) {
            %>
            <tr>
                <td><%=resultSet.getString("proj_id")%></td>
                <td><%=resultSet.getString("proj_time")%></td>
                <td><%=resultSet.getString("time")%></td>
                <td><%=resultSet.getString("proj_type")%></td>
                <td><%=resultSet.getString("proj_cate")%></td>

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



<!--       <table>
                        <tr><th>Project Id</th>
                            <th>Title</th>
                            <th>Project Type</th>
                            <th>Start Date</th>
                            <th>Duration</th>
                            <th>Project Head</th>
                        </tr>-->
        <!--                <c:forEach var="pro" items="${rs.rows}">
                        <tr><td>${pro.id}</td>
                            <td>${pro.name}</td>
                            <td>${pro.cat}</td>
                            <td>${pro.start_date}</td>
                            <td>${pro.dur}</td>
                            <td><sql:query dataSource="${ds}" var="rs0">
            select "first_name", "last_name" from "employee" where "email" = '${pro.managed_by}'
        </sql:query> 
${rs0.rows[0].first_name} ${rs0.rows[0].last_name}</td></tr>
            </c:forEach>-->
<!--</table>-->

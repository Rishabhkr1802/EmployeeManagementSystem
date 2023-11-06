<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<sql:setDataSource driver="org.apache.derby.jdbc.ClientDriver" url="jdbc:derby://localhost:1527/EmployeeManagementSystem" user="hritik" password="hritik" var="ds"/>
<sql:query dataSource="${ds}" var="rs">
    select * from "employee"
</sql:query> 
    
    
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
        </style>
    </head>
    <body>
        <%@include file="Header.jsp" %>
        <%@include file="Add Nav Horizontal.jsp" %>
        <h1 style="text-align: center; color: yellow; text-shadow: 1px 2px 4px gray,-1px -2px 4px salmon; font-size: 45px; font-family: cooper; background-color: red" >List of Employees</h1>
        <div class="set" >
            <h2>Name</h2><h2>Age</h2><h2>E-mail</h2><h2>Date Of Joining</h2>
                <table><c:forEach var="emp" items="${rs.rows}">
                <tr><td><p style="margin-left: 10pc; color: black;">${emp.first_name}  ${emp.last_name}</p></td><td><p style="margin-left: 10pc; color: black;">${emp.age}</p></td> <td><p style="margin-left: 12pc; color: black;">${emp.email}</p></td> <td><p style="margin-left: 12pc; color: black;">${emp.doj}</p></td></tr>
                    </c:forEach></table>
        </div> 
        <%@include file="Footer.jsp" %>
    </body>
</html>
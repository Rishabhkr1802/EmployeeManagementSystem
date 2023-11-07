<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<sql:setDataSource driver="org.apache.derby.jdbc.ClientDriver" url="jdbc:derby://localhost:1527/ems" user="root" password="root" var="ds"/>
<sql:query dataSource="${ds}" var="rs">
    select * from "leaves"
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
        <h1 style="text-align: center; color: yellow; text-shadow: 1px 2px 4px gray,-1px -2px 4px salmon; font-size: 45px; font-family: cooper; background-color: red" >Leaves</h1>
        <div class="set" >
<h2>Reason</h2><h2>From</h2><h2>To</h2><h2>Status</h2>
                <table><c:forEach var="leave" items="${rs.rows}">
                <tr><td><p style="margin-left: 10pc; color: black;">${leave.reason}  ${leave.from}</p></td><td><p style="margin-left: 10pc; color: black;">${leave.to}</p></td> <td><p style="margin-left: 12pc; color: black;">${leave.status}</p></td> <td><p style="margin-left: 12pc; color: black;"></p></td></tr>
                    </c:forEach></table>
        </div> 
        <%@include file="Footer.jsp" %>
    </body>
</html>












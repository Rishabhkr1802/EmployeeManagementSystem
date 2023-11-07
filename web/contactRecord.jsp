<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<sql:setDataSource driver="org.apache.derby.jdbc.ClientDriver" url="jdbc:derby://localhost:1527/ems" user="root" password="root" var="ds"/>
<sql:query dataSource="${ds}" var="rs">
    select * from "contact_us"
</sql:query> 
    
    
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List of Employees</title>
        <link rel="stylesheet" href="Style.css" type="text/css" />
        <style>
            h4{
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
            <h4>Name</h4><h4>Email</h4><h4>Contact No.</h4><h4>Address</h4><h4>Message</h4>
                <table><c:forEach var="contact" items="${rs.rows}">
                <tr><td><p style="margin-left: 10pc; color: black;">${contact.name}  ${contact.email}</p></td><td><p style="margin-left: 10pc; color: black;">${contact.contact_no}</p></td> <td><p style="margin-left: 12pc; color: black;">${contact.address}</p></td> <td><p style="margin-left: 12pc; color: black;">${contact.message}</p></td></tr>
                    </c:forEach></table>
        </div> 
        <%@include file="Footer.jsp" %>
    </body>
</html>
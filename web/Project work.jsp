<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<sql:setDataSource driver="org.apache.derby.jdbc.ClientDriver" url="jdbc:derby://localhost:1527/EmployeeManagementSystem" user="hritik" password="hritik" var="ds"/>
        
<sql:query dataSource="${ds}" var="rs">
        select * from employee where email = '${param.EmpId}' 
</sql:query>
<sql:query dataSource="${ds}" var="rs1">
        select * from project where proj_id = '${param.proj_Id}' 
</sql:query>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Project</title>
    </head>
    <body>
        <%@include file="Header.jsp" %>
        <div class="Check">
            <h1>Recently ${rs.rows[0].first_name}</h1>
        </div>
        <%@include file="Footer.jsp" %>
    </body>
</html>

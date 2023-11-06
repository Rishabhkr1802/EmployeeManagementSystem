<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<sql:setDataSource driver="org.apache.derby.jdbc.ClientDriver" url="jdbc:derby://localhost:1527/EmployeeManagementSystem" user="hritik" password="hritik" var="ds"/>
<sql:update dataSource="${ds}" var="rs">
    insert into "employee" ("first_name", "last_name", "email", "password", "age", "gender", "address", "state", "doj") values ('${param.first}', '${param.last}', '${param.email}', '${param.password}', ${param.age}, '${param.gender}', '${param.add}', '${param.state}', '${param.doj}')
</sql:update> 
    
    
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Successfully</title>
    </head>
    <body>
        <%@include file="Header.jsp" %>
        <div class="Main">
            <h1 aligh="center" style="color: salmon; font-family: times new roman;">${param.first} ${param.last} add successfully in the Employee Record.</h1>
        </div>
        <%@include file="Footer.jsp"%>
    </body>
</html>

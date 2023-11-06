<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<sql:setDataSource driver="org.apache.derby.jdbc.ClientDriver" url="jdbc:derby://localhost:1527/EmployeeManagementSystem" user="hritik" password="hritik" var="ds"/>
<sql:update dataSource="${ds}" var="rs">
    insert into "contact_us"("name", "email","contact_no", "address", "message") values ('${param.C_name}', '${param.C_mail}', '${param.C_contact}', '${param.C_address}', '${param.C_reason}')
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
            <h1 aligh="center">Thank You ${param.C_name} for Contacting Us.</h1><a href="Homepage.jsp">Click Here to continue...</a>
        </div>
        <%@include file="Footer.jsp"%>
    </body>
</html>

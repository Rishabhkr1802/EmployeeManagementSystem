<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<sql:setDataSource driver="org.apache.derby.jdbc.ClientDriver" url="jdbc:derby://localhost:1527/ems" user="root" password="root" var="ds"/>
<sql:update dataSource="${ds}" var="rs">
    insert into "leaves"("emp_id", "from", "to", "reason", "status")
    values ('${employee.email}', '${param.from}', '${param.to}', '${param.reason}', false)
</sql:update> 
    
    
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
        <title>Add Successfully</title>
    </head>
    <body>
        <%@include file="Header.jsp" %>
        <div class="Main">
            <h1 aligh="center" style="color: black; font-family: times new roman;">Leave Requested Successfully</h1>
            <a href="Employee Process.jsp">Click Here... to Continue</a>
        </div>
        <%@include file="Footer.jsp"%>
    </body>
</html>

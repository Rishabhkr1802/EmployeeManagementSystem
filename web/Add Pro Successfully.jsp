<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<sql:setDataSource driver="org.apache.derby.jdbc.ClientDriver" url="jdbc:derby://localhost:1527/EmployeeManagementSystem" user="hritik" password="hritik" var="ds"/>
<sql:update dataSource="${ds}" var="rs">
    insert into "project"("name", "id", "cat", "start_date", "dur", "managed_by") values ('${param.name}', ${param.id}, '${param.cat}', '${param.start_date}', ${param.dur}, '${param.managed_by}')
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
            <h1 aligh="center" style="color: black; font-family: times new roman;">Project Add Successfully named as : --${param.name}</h1>
            <a href="Add Project.jsp">Click Here... to Continue</a>
        </div>
        <%@include file="Footer.jsp"%>
    </body>
</html>

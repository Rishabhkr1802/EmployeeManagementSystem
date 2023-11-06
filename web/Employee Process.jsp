<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<sql:setDataSource driver="org.apache.derby.jdbc.ClientDriver" url="jdbc:derby://localhost:1527/EmployeeManagementSystem" user="hritik" password="hritik" var="ds"/>
<sql:query dataSource="${ds}" var="rs">
    select * from "employee" where "email" = '${param.EmpId}'
</sql:query>> 
<c:choose>
    <c:when  test="${rs.rows[0] eq null or rs.rows[0].password ne param.Pass}">
    <c:redirect url="/" />
    </c:when>
    <c:otherwise>
        <c:set var="employee" value="${rs.rows[0]}" scope="session"/>
    </c:otherwise>
</c:choose>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Process</title>
        <link rel="stylesheet" href="Style.css" type="text/css" />
        <style>
            
            .Link{
                background-color: maroon;
                height: auto;
                width: auto;
                margin: 15px;
                border-radius: 40px;
                box-shadow: 4px 5px 5px black,-5px -6px 5px indigo;
            }
            .Link,.Logout{
                display: inline-block;
                float:  left;
                
            }
            .Logout{
                margin-left: 800px;
                margin-top: 10px;
            }
            button{
                background-color: brown;
                height: 30px;
                width: 80px;
                color: white;
                font-family: cooper;
                border-radius: 40px;
                text-shadow: 3px 4px 5px black;
                font-size: 17px;
                border: 2px solid red;
                box-shadow: 3px 3px 5px black;
            }
            button:hover{
                background-color: yellow;
                color: blue;
                text-shadow: -2px -2px 5px black;
                font-size: 20px;
                
            }
            a{
                text-decoration: none;
                background-color: salmon;
                color: black;
                text-shadow: 2px 3px 5px black;
                font-size: 30px;
                margin-left: 30px;
                border-radius: 38px;
                box-shadow: 4px 4px 4px blue;
                padding: 5px;
            }
            a:hover{
                background-color: yellow;
                text-decoration: none;
                box-shadow: 4px 4px 4px black;
            }
        </style>
    </head>
    <body>
        <%@include file="Header.jsp"%>
        <h1 style="text-align: center; color: yellow; 
            text-shadow: 1px 2px 4px gray,-1px -2px 4px salmon; 
            font-size: 45px; font-family: cooper">Welcome ${employee.first_name}</h1>
        <div class="Link">
            <br/><br/><br/>
            <a href="View Project.jsp">Check New Projects</a><br/><br/>
            <a href="Request Leaves.jsp">Request Leave</a><br/><br/>
            <a href="View Leaves.jsp">View Leaves Status</a><br/><br/>
        </div>
        <div class="Logout">
            <a href="${pageContext.request.contextPath}/Admin%20Login.jsp">            <button>Logout</button></a>
        </div>
    </body>
</html>

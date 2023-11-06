<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<sql:setDataSource driver="org.apache.derby.jdbc.ClientDriver" url="jdbc:derby://localhost:1527/EmployeeManagementSystem" user="hritik" password="hritik" var="ds"/>
<sql:query dataSource="${ds}" var="rs">
    select * from "ad_login" where "ad_id" = '${param.adminId}'
</sql:query>> 
<c:choose>
    <c:when  test="${rs.rows[0] eq null or rs.rows[0].Password ne param.pass}">
        <c:redirect url="/" />
    </c:when>
    <c:otherwise>
        <c:set var="admin" value="${rs.rows[0].ad_id}" scope="session"/>
    </c:otherwise>
</c:choose>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Navigation</title>
        <link rel="stylesheet" href="Style.css" type="text/css" />
        <style>
            .Bar{
                background-color: black;
                border: 1.5px solid maroon;
                box-shadow: 3px 3px 4px lightcoral;
                text-align: center;
                font-size: 24px;
                box-sizing: inherit;
                margin: 1px;
                width: 20pc;
                margin-top: 5px;
            }
            .Bar,.Logout{
                display: inline-block;
                float:  left;
            }
            button{
                background-color: black;
                height: 30px;
                width: 80px;
                color: red;
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
                background-color: red;
                padding: 8px;
                border: 1.2px solid maroon;
                border-radius: 5px;
                color: palegoldenrod;
                text-shadow: 3px 3px 3px black;
            }
            a:hover{
                background-color: black;
                color: red;
                font-family: cooper;
                text-shadow: 3px 3px 4px white,-3px -3px 4px white;
                border: 1px solid white;
            }
            .Logout{
                margin-left: 800px;
                margin-top: 10px;
            }
        </style>
    </head>
    <body>
        <%@include file="Header.jsp" %>
        <h1 style="text-align: center;
            color: yellow; text-shadow: 1px 2px 4px gray,-1px -2px 4px salmon;
            font-size: 45px; font-family: cooper">Welcome ${rs.rows[0].ad_id}</h1>
        <div class="Bar">
            <a href="Add Employee.jsp">Add Employee</a></br></br>
            <a href="View Employee.jsp">View Employee</a></br></br>
            <a href="Add Project.jsp">Add Project</a></br></br>
            <a href="View Leaves Ad.jsp">View Leaves Request</a></br></br>
            <a href="contactReport.jsp">View Contact request</a>
            </div>
            <div class="Logout">
                <a href="${pageContext.request.contextPath}/Admin%20Login.jsp"><button>Logout</button></a>
        </div>
    </body>
</html>

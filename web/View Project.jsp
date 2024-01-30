<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List of Project</title>
        <link rel="stylesheet" href="Style.css" type="text/css" />
        <style>
            h2{
                display: inline-block;
                margin-left: 30px;
                border-radius: 20px;
            }
            .set{
                font-size: 18px;
            }
        </style>
    </head>
    <body>
        <%@include file="Header.jsp" %>
        <h1 style="text-align: center; color: yellow; text-shadow: 1px 2px 4px gray,-1px -2px 4px salmon; font-size: 45px; font-family: cooper; background-color: red" >List of Projects</h1>
       <table>
                <tr><th>Project Id</th>
                    <th>Title</th>
                    <th>Project Type</th>
                    <th>Start Date</th>
                    <th>Duration</th>
                    <th>Project Head</th>
                </tr>
<!--                <c:forEach var="pro" items="${rs.rows}">
                <tr><td>${pro.id}</td>
                    <td>${pro.name}</td>
                    <td>${pro.cat}</td>
                    <td>${pro.start_date}</td>
                    <td>${pro.dur}</td>
                    <td><sql:query dataSource="${ds}" var="rs0">
    select "first_name", "last_name" from "employee" where "email" = '${pro.managed_by}'
</sql:query> 
${rs0.rows[0].first_name} ${rs0.rows[0].last_name}</td></tr>
            </c:forEach>-->
       </table>
        <%@include file="Footer.jsp" %>
    </body>
</html>
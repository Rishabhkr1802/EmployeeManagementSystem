<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Process</title>
        <link rel="stylesheet" href="Style.css" type="text/css" />
        <style>
            .container {
                background-color: lightsalmon;
                border-radius: 10px;
            }
            .Link{
                background-color: maroon;
                height: auto;
                width: 25pc;
                padding: 10px;
                margin-top: -3pc;
                margin-left: 20px;
                margin-bottom: 30px;
                border-radius: 40px;
                box-shadow: 4px 5px 5px black,-5px -6px 5px indigo;
            }
            .Link,.Logout{
                display: inline-block
            }
            .Logout {
                margin-left: 800px;
                margin-top: 10px;
            }
            input[type=submit]{
                background-color: gold;
                height: 30px;
                width: 80px;
                color: white;
                font-family: cooper;
                border-radius: 40px;
                text-shadow: 3px 4px 5px grey;
                font-size: 17px;
                border: 2px solid red;
                box-shadow: 3px 3px 5px black;
            }
            input[type=submit]:hover{
                background-color: yellow;
                text-shadow: 3px 4px 5px black;
                color: white;
                text-shadow: -2px -2px 5px black;
                font-size: 20px;

            }
            .Link a{
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
            .Link a:hover{
                background-color: yellow;
                text-decoration: none;
                box-shadow: 4px 4px 4px black;
            }
        </style>
    </head>
    <body>

        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            if (session.getAttribute("EmpEmail") == null) {
                session.getAttribute("EmpEmail");
                response.sendRedirect("Homepage.jsp");
            }
        %>

        <%@include file="Header.jsp"%>
        <div class="container">
            <h1 style="text-align: center; color: yellow;text-shadow: 1px 2px 4px gray,-1px -2px 4px salmon;font-size: 45px; font-family: cooper">
                Welcome</h1>

            <div class="Logout">
                <form action="EmployeeLogout" method="post">
                    <input type="submit" value="Logout">
                </form>
            </div>

            <div class="Link">
                <br/><br/><br/>
                <a href="View Project.jsp">Check New Projects</a><br/><br/>
                <!--<a href="ViewProjects">Check New Projects</a><br/><br/>-->
                <a href="Request Leaves.jsp">Request Leave</a><br/><br/>
                <a href="View Leaves.jsp">View Leaves Status</a><br/><br/>
            </div>
        </div>
    </body>
</html>

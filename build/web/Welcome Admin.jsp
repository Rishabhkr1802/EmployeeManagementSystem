<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome Admin</title>
        <link rel="stylesheet" href="Style.css" type="text/css" />
        <style>
            .Bar{
                background-color: maroon;
                border: 1.5px solid gold;
                box-shadow: 3px 3px 4px lightcoral;
                text-align: center;
                font-size: 24px;
                box-sizing: inherit;
                margin: 1px;
                width: 20pc;
                margin-top: -5pc;
                height: 23pc;
            }
            .Bar,.Logout{
                display: inline-block;
                float:  left;
            }
            input[type = submit]{
                background-color: gold;
                height: 30px;
                width: 80px;
                color: white;
                font-family: cooper;
                border-radius: 40px;
                text-shadow: 3px 4px 5px black;
                font-size: 17px;
                border: 2px solid red;
                box-shadow: 3px 2px 2px black;
            }
            input[type = submit]:hover{
                background-color: black;
                color: white;
                font-size: 17px;        
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
                color: white;
                font-family: cooper;
                border: 1px solid white;
            }
            .Logout{
                margin-left: 800px;
                margin-top: 10px;
            }
        </style>
    </head>
    <body>

        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            if (session.getAttribute("AdminUsername") == null) {
                session.getAttribute("AdminUsername");
                response.sendRedirect("Homepage.jsp");
            }
        %>

        <%@include file="Header.jsp" %>
        <h1 style="text-align: center;
            color: yellow; text-shadow: 1px 2px 4px gray,-1px -2px 4px salmon;
            font-size: 45px; font-family: cooper">Welcome Admin</h1>
        <div class="Logout">
            <form action="AdminLogout" method="post">
                <input type="submit" value="Logout">
            </form>
        </div>
        <div class="Bar">
            <div class="aside_links"
                 <a href="Add Employee"></a></br></br>
                <a href="Add Employee.jsp">Add Employee</a></br></br>
                <a href="View Employee.jsp">View Employee</a></br></br>
                <a href="Add Project.jsp">Add Project</a></br></br>
                <a href="View Leaves Ad.jsp">View Leaves Request</a></br></br>
                <a href="List of Contacts.jsp">View Contact request</a>
            </div>
        </div>
    </body>
</html>

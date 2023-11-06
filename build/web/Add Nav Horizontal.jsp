<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nav</title>
        <style>
            .Nav{
                background: linear-gradient(to right,black,darkgray,darkgray);
                height: 25px;
                text-align:right;   
                padding: 19px;
                margin: 5px;
                box-shadow: 3px 4px 4px black,-s3px -4px 4px black;
            }
            a{
                margin: 20px;
                text-decoration: none;
                color: white;
                text-shadow: 3px 4px 4px black,3px 4px 4px black;
                font-size: 25px;
                
            }
            a:hover{
                color: white;
                text-shadow: 3px 4px 4px black,3px 4px 4px black;
                box-shadow: 2px 4px 3px black;
                background-color: red;
                padding: 12px;
            }
        </style>
    </head>
    <body>
        <div class="Nav">
            <a href="Add Employee.jsp">Add Employee</a>
            <a href="View Employee.jsp">View Employee</a>
            <a href="Add Project.jsp">Add Project</a>
            <a href="View Leaves Ad.jsp">View Leaves Request</a>
            <a href="contactRecord.jsp">View Contact Request</a>
            <a href="Admin Login.jsp">Logout</a>
        </div>
    </body>
</html>

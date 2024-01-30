<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Navigation</title>
        <style>
            .Nav{
                background: linear-gradient(to right,black,lightsalmon,grey);
                height: 50px;
                text-align:right;
                margin: 5px;
                box-shadow: 3px 4px 4px black;
            }
            a{
                margin: 20px;
                text-decoration: none;
                color: white;
                text-shadow: 3px 4px 4px black,3px 4px 4px black;
                font-size: 40px;
                
            }
            a:hover{
                color: yellow;
                text-shadow: 3px 4px 4px black,-3px 4px 4px black;
            }
        </style>
    </head>
    <body>
        <div class="Nav">
            <a href="Homepage.jsp">Home</a>
            <a href="Admin Login.jsp">Administration</a>
            <a href="Contact Us.jsp">Contact Us</a>
            <a href="About Us.jsp">About Us</a>
        </div>
    </body>
</html>
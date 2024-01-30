<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Homepage</title>
        <link rel="stylesheet" href="Style.css" type="text/css" />
        <style>
            body{
                border-shadow: 5px 6px 1px black;
                font-size: 30px;
                margin: 20px;
            }
            .Login{
                box-shadow: 2px 3px 4px black;
            }
            input[type=text],[type=password]{
                height: 25px;
                width: 25pc;
                box-shadow: 2px 3px 3px black;
                border-radius: 20px;
                font-size: 20px;
                text-align: center;
            }
            #heading{
                text-shadow: 2px 3px 4px white;
                color: black;
            }
            input[type=submit]{
                background-color: salmon;
                height: 50px;
                width: 100px;
                font-size: 30px;
                font-family: cooper;
                color: yellow;
                text-shadow: 2px 3px 4px black;
                border: 1.8px solid black;
                margin-left: 30pc;
                box-shadow: 6px 6px 4px brown;
            }
            input[type=submit]:hover{
                background-color: maroon;
                color: white;
                box-shadow: -4px -4px 5px red;
                font-size: 25px;
            }
            .Main{
                margin: 20px;   
            }
            fieldset{
                color: black;
                text-shadow: 4px 4px 4px black;
            }
        </style>
    </head>
    <body>
        <%@include file="Header.jsp" %>
        <%@include file="Navigation.jsp" %>
<!--        <div class="Login">
            <fieldset>
                <legend><span id="heading">Admin Login</span></legend>
                <form action="Admin Navigation.jsp" method="post">
                        Admin Id : &nbsp&nbsp&nbsp
                        <input required type="text" name="adminId" placeholder="E-mail" maxlength="25" ><br/><br/><br/>
                        Password &nbsp&nbsp&nbsp&nbsp&nbsp: &nbsp&nbsp&nbsp
                        <input required type="password" name="pass" placeholder="Password" maxlength="8" ><br/><br/><br/>
                        <input type="submit" value="Login">
                </form>
            </fieldset>
        </div>-->
        <div class="Login">
            <fieldset>
                <legend><span id="heading">Admin Login</span></legend>
                <form action="AdminLogin" method="post">
                        Email &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp: &nbsp&nbsp&nbsp
                        <input required type="text" name="adminuser" placeholder="E-mail" maxlength="25" ><br/><br/><br/>
                        Password &nbsp&nbsp&nbsp&nbsp&nbsp: &nbsp&nbsp&nbsp
                        <input required type="password" name="adminpass" placeholder="Password" maxlength="8" ><br/><br/><br/>
                        <input type="submit" value="Login">
                </form>
            </fieldset>
        </div>
        <%@include file="Footer.jsp" %>
    </body>
</html>

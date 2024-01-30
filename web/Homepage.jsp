<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
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
                width: 50pc;
                box-shadow: 2px 3px 3px black;
                border-radius: 20px;
                font-size: 20px;
                text-align: center;
            }
            #heading{
                text-decoration: underline;
                color: black;
                text-border: 2px solid black;
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
                margin-left: 35pc;
                box-shadow: 6px 6px 4px brown;
            }
            input[type=submit]:hover{
                background-color: maroon;
                color: white;
            }
            .Main{
                margin: 20px;   
            }
        </style>
    </head>
    <body>
        <div class="Main">
            <%@include file="Header.jsp" %>
            <%@include file="Navigation.jsp" %>
            <div class="Login">
                <fieldset>
                    <legend><span id="heading">Employee Login</span></legend>
                    <form action="EmployeeLogin" method="post">
                        Email &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp : &nbsp&nbsp&nbsp
                        <input type="text" name="EmpEmail" id="EmpEmail" placeholder="Email" maxlength="25" required>
<!--                        <span style="color: red;font-size: 20px;">Please enter email...</span><br/><br/><br/>-->
                        <br/><br/><br/>
                        Password &nbsp&nbsp&nbsp&nbsp&nbsp: &nbsp&nbsp&nbsp
                        <input type="password" name="EmpPass" id="EmpPass" placeholder="Password" maxlength="10" required>
                        <!--<span style="color: red;font-size: 20px;">Please enter Password...</span><br/><br/><br/>-->
                        <br/><br/><br/>
                        <input type="submit" value="Login">
                    </form>
                </fieldset>
            </div>
            <%@include file="Footer.jsp" %>
        </div>
    </body>
</html>

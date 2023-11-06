<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Us</title>
        <link rel="stylesheet" href="Style.css" type="text/css" /> 
        <style>
            .Container{
                background-color: firebrick;
                color: lightseagreen;
                text-shadow: -2px -4px 3px red;
                background-image: url('Logo3.png');
                background-repeat: no-repeat;
                font-family: cooper;
                margin: 20px;
                inline-box-align:  last;
                border-radius: 30px;
                font-size: 35px;
            }
            input[type=text],[type=email]{
                height: 25px;
                width: 25pc;
                box-shadow: 2px 3px 3px black;
                border-radius: 20px;
                font-size: 20px;
                text-align: center;
            }
            input[type=submit]{
                background-color: salmon;
                height: 50px;
                width: 200px;
                font-size: 30px;
                font-family: cooper;
                color: yellow;
                text-shadow: 2px 3px 4px black;
                border: 1.8px solid black;
                margin-left: 1pc;
                box-shadow: 6px 6px 4px brown;
                border-radius: 30px;
            }
            input[type=submit]:hover{
                background-color: maroon;
                color: white;
                box-shadow: -4px -4px 5px red;
                font-size: 25px;
            }
            fieldset{
                text-align: center;
            }
            form{
                margin-top: 30px;
            }
        </style>
    </head>
    <body>
        <%@include file="Header.jsp" %>
        <%@include file="Navigation.jsp" %>
        <div class="Container">
            <fieldset>
                <legend>Contact Us </legend>
                <form action="Add Contact.jsp" method="post">
                    Name : <input type="text" name="C_name" required/><br/><br/>
                    E-mail : <input type="email" name="C_mail" maxlength="25" required/><br/><br/>
                    Contact No. : <input type="text" name="C_contact" maxlength="10" required/><br/><br/>
                    Address : <input type="text" name="C_address" required/><br/><br/>
                    Message : <input type="text" name="C_reason" required/><br/><br/>
                    <input type="submit" value="Submit"/>
                </form>
            </fieldset>
        </div>
        <%@include file="Footer.jsp" %>
    </body>
</html>

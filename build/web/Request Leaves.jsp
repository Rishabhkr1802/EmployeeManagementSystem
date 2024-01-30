<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Request Leaves</title>
        <link rel="stylesheet" href="Style.css" type="text/css" />
        <style>
            textarea{
                height: 100px;width: 400px; 
            }
            h2{
                margin-left: 10px;
                color: white;
                text-shadow: 2px 3px 4px black;
                font-family: Times new roman;
                border-radius: 20px;
            }
            .set{
                font-size: 25px;
                color: black;
                text-shadow: 1px 2px 3px salmon;
            }
            input[type=text],[type=date]{
                height: 25px;
                width: 50pc;
                box-shadow: 2px 3px 3px black;
                border-radius: 20px;
                font-size: 20px;
                text-align: center;
            }
            textArea{
                height: 25px;
                width: 50pc;
                box-shadow: 2px 3px 3px black;
                border-radius: 20px;
                font-size: 20px;
                text-align: center;
            }
        </style>
    </head>
    <body>
        <%@include file="Header.jsp" %>
        <h1 style="text-align: center; color: yellow; text-shadow: 1px 2px 4px gray,-1px -2px 4px salmon; font-size: 45px; font-family: cooper; background-color: red" >Request for Leave</h1>
        <div class="Main" style="text-align: center;">
            <form action="AddLeaves" method="post">
                <h1> From : --</h1><input type="date" name="from" required /><br/>
                <h1> To : --</h1><input type="date" name="to" required /><br/>
                <h1> Reason : --</h1><textarea name="reason" rows="5" cols="20" required/></textarea><br/><br/>
                <input type="submit" style="margin-left: 0pc;" value="Request">
            </form>
        </div>
        <%@include file="Footer.jsp" %>
    </body>
</html>

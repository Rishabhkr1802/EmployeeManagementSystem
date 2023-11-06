<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Leave Details</title>
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
        </style>
    </head>
    <body>
        <%@include file="Header.jsp" %>
        <%@include file="Add Nav Horizontal.jsp" %>
        <div class="Container">
            <h1 style="text-align: center; color: yellow; text-shadow: 1px 2px 4px gray,-1px -2px 4px salmon; font-size: 45px; font-family: cooper; background-color: red" >Add Leave Details</h1>
            <div class="Main" style="text-align: center;">
                <form action="Add Leav Successfully.jsp" method="post"> 
                <h2>From :- </h2>
                <input type="text" name="from_leav" size="40"><br/><br/>
                <h2>To :-</h2>
                <input type="text" name="to_leav" size="40"><br/><br/>
                <h2>Reason :-</h2>
                <textarea name="reason"> </textarea><br/><br/>
                <input type="submit" style="margin-left: 0pc;" value="Add Leave">
                </form>
            </div>
        </div>
        <%@include file="Footer.jsp" %>
    </body>
</html>

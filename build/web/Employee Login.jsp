
  <!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee Login</title>
        <link rel="stylesheet" type="text/css" href="Style.css"/>      
        <style>
             body{
                border-shadow: 5px 6px 1px black;
                font-size: 30px;
                margin-top: 200px;
                margin-left: 300px;
                margin-right: 300px;
            }
            fieldset{
                height: 370px;
            }
            
            .Login{
                box-shadow: 5px 5px 5px black;
                height: 400px;
                margin: 30px;
            }
        </style>
    </head>
    <body>
        <img src="Logo3.png" height="100px" width="400px"/>
        <div class="Login">
             <fieldset>
                <legend><span id="heading">Employee Login</span></legend>
                <form action="Employee Process.jsp" method="post">
                        Employee Id : &nbsp&nbsp&nbsp
                        <input required type="text" name="EmpId" placeholder="E-mail" size="40" maxlength="25" ><br/><br/><br/>
                        Password &nbsp&nbsp&nbsp&nbsp&nbsp: &nbsp&nbsp&nbsp
                        <input required type="password" name="Pass" placeholder="Password" size="40" maxlength="10" ><br/><br/><br/>
                        <input type="submit" value="Login">
                </form>
            </fieldset>
        </div>
    </body>
</html>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Employee</title>
        <link rel="stylesheet" href="Style.css" type="text/css" />
        <style>
            input[type=text],[type=email],[type=password],[type=date]{
                height: 25px;
                width: 50pc;
                box-shadow: 2px 3px 3px black;
                border-radius: 20px;
                font-size: 20px;
                text-align: center;
            }
            select{
                height: 25px;
                width: 50pc;
                box-shadow: 2px 3px 3px black;
                border-radius: 20px;
                font-size: 20px;
                text-align: center;
            }
            textarea{
                height: 25px;
                width: 50pc;
                box-shadow: 2px 3px 3px black;
                border-radius: 20px;
                font-size: 20px;
                text-align: center;
                .Center{
                    text-align: center;
                    margin-left: 30px;
                }
            </style>
        </head>
        <body>
            <%@include file="Header.jsp" %>
            <%@include file="Add Nav Horizontal.jsp" %>
            <div class="center">
                <!--<h1>Admin id: ${admin}</h1>-->
                <h1 style="text-align: center;
                    color: yellow; text-shadow: 1px 2px 4px gray,-1px -2px 4px salmon; 
                    font-size: 45px; font-family: cooper; background-color: red" >Add Employee</h1>

                    <div class="Main1" style="text-align: left;">
                    <form action="AddEmployee" method="POST" align="center">
                        <h2>First Name :- </h2><input required type="text" name="firstname" size="40" maxlength="15" /><br/>
                        <h2>Last Name :- </h2><input required type="text" name="lastname" size="40" maxlength="15" /><br/>
                        <h2>Age :- </h2><select name = "age"> 
                            <option value="18">18</option>
                            <option value="19">19</option>
                            <option value="20">20</option>
                            <option value="21">21</option>
                            <option value="18">22</option>
                            <option value="19">23</option>
                            <option value="20">24</option>
                            <option value=" ">25</option>
                            <option value="18">26</option>
                            <option value="19">27</option>
                            <option value="20">28</option>
                        </select><br/>
                        <h2>Gender :- </h2><br/>
                        Male <input type="radio" name="gender" value="male" checked/>
                        Female <input type="radio" name="gender" value="female"><br/>
                        <h2>Email :- </h2><input type="email" required name="email"
                                                 onkeyup="checkEmail(this)"
                                                 placeholder="E-mail" size="40" maxlength="25"/>
                        <span id="email-validation"></span><br/>
                        <h2>Address :-</h2><textarea required name="address"></textarea><br/>
                        <h2>State :- </h2>
                        <input required type="text"
                               name="state" placeholder="State" size="40" maxlength="15" /><br/>
                        <h2>Password :- </h2>
                        <input required type="password" name="password"
                               placeholder="Password" size="40" maxlength="8" /><br/>
                        <h2>Confirm Password :- </h2><input required type="password" placeholder="Password" size="40" maxlength="8"/><br/>
                        <h2>Date of Joining :- </h2><input required type="date" name="doj" size="10"/><br/><br/>
                        <input type="submit" id ="submit" value="Add Employee" style="margin-left: 5%;"/><br/>
                    </form>
                </div>
            </div>
            <%@include file="Footer.jsp" %>
            <script>
                function checkEmail(email) {
                    var x = email.value;
                    var xhttp = new XMLHttpRequest();
                    xhttp.onreadystatechange = function () {
                        if (this.readyState === 4 && this.status === 200) {
                            y = this.responseText;
                            if (y === "Valid") {
                                document.getElementById("email-validation").innerHTML = "";
                                document.getElementById("submit").disabled = false;
                            } else {
                                document.getElementById("email-validation").innerHTML = y;
                                document.getElementById("submit").disabled = true;
                            }
                        }
                    };
                    xhttp.open("GET", "validateEmail?email=" + x, true);
                    xhttp.send();
                }
            </script>
        </body>
    </html>

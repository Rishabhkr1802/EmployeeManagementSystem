<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Project</title>
        <link rel="stylesheet" href="Style.css" type="text/css" />
        <style>
            .wow{
                font-size: 20px;
                color: black;
            }
            input[type=text]{
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
        <%@include file="Add Nav Horizontal.jsp" %>
        <div class="Container">
            <h1 style="text-align: center; color: yellow; text-shadow: 1px 2px 4px gray,-1px -2px 4px salmon; font-size: 45px; font-family: cooper; background-color: red" >Add New Project Details</h1>
            <div class="wow" style="text-align: center">
                <form action="AddProject" method="post">
                    <h2>Name of Project :-</h2>
                    <input type="text" name="proj_name"/><br/>
                    <h2>Project Id:-</h2>
                    <input type="text" name="proj_id" /> <span id="id-validation"></span><br/>
                    <h2>Project Category:-</h2>
                    <input type="text" name="proj_cat" /><br/>
                    <!--<h2>Start Date</h2>-->
                    <!--<input type="date" name="start_date" ><br/>-->
                    <h2>Duration in Months:-</h2>
                    <input type="text" name="dur" /><br/>
                    <h2>Project Head</h2>
                    <input type="text" name="managed_by" size="20" /><br/>
                    <!--                <h2><select name="managed_by">
                                        <c:forEach var="emp" items="${rs.rows}">
                                            <option value="${emp.email}">${emp.first_name} ${emp.last_name}</option>
                                        </c:forEach>
                                    </select></h2>-->
                    
                    <br><br><br>

                    <input type="submit" id="submit" style="margin-left:0pc; " value="Add New Project">
                </form>
            </div>
        </div>
        <script>
            //<input type="text" name="proj_id" min="1" max="2000" maxlength="6" onkeyup="checkId(this)"> <span id="id-validation"></span><br/>
            function checkId(id) {
                var x = id.value;
                var xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function () {
                    if (this.readyState === 4 && this.status === 200) {
                        y = this.responseText;
                        if (y === "Valid") {
                            document.getElementById("id-validation").innerHTML = "";
                            document.getElementById("submit").disabled = false;
                        } else {
                            document.getElementById("id-validation").innerHTML = y;
                            document.getElementById("submit").disabled = true;
                        }
                    }
                };
                xhttp.open("GET", "validateProId?id=" + x, true);
                xhttp.send();
            }
        </script>

    </body>
</html>

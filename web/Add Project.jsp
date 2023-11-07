<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<sql:setDataSource driver="org.apache.derby.jdbc.ClientDriver" url="jdbc:derby://localhost:1527/ems" user="root" password="root" var="ds"/>
<sql:query dataSource="${ds}" var="rs">
    select * from "employee"
</sql:query> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Project</title>
        <link rel="stylesheet" href="Style.css" type="text/css" />
        <style>
            .wow{
                font-size: 20px;
                color: aqua;
                text-shadow: 2px 3px 2px red,-2px -3px 3px grey;
            }
        </style>
    </head>
    <body>
        <%@include file="Header.jsp" %>
        <%@include file="Add Nav Horizontal.jsp" %>
        <div class="Container">
            <h1 style="text-align: center; color: yellow; text-shadow: 1px 2px 4px gray,-1px -2px 4px salmon; font-size: 45px; font-family: cooper; background-color: red" >Add New Project Details</h1>
            <div class="wow" style="text-align: center">
                <form action="Add Pro Successfully.jsp" method="post">
                <h2>Name of Project :-</h2>
                <input type="text" name="name" size="40" maxlength="35" ><br/>
                <h2>Project Id:-</h2>
                <input type="number" name="id" min="1" max="2000" maxlength="6" onkeyup="checkId(this)"> <span id="id-validation"></span><br/>
                <h2>Project Category:-</h2>
                <input type="text" name="cat"  size="40" maxlength="15" ><br/>
                <h2>Start Date</h2>
                <input type="date" name="start_date" ><br/>
                <h2>Duration in Months:-</h2>
                <input type="number" name="dur" size="2" min="6" max="12" ><br/>
                <h2>Project Head</h2>
                <h2><select name="managed_by">
                    <c:forEach var="emp" items="${rs.rows}">
                        <option value="${emp.email}">${emp.first_name} ${emp.last_name}</option>
                    </c:forEach>
                </select></h2>
                
                <input type="submit" id="submit" style="margin-left:0pc; " value="Add New Project">
                </form>
            </div>
        </div>
                <script>
function checkId(id) {
  var x = id.value;
        var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState === 4 && this.status === 200) {
              y = this.responseText;
              if(y === "Valid"){
                  document.getElementById("id-validation").innerHTML = "";
                  document.getElementById("submit").disabled = false;
              }else{
                  document.getElementById("id-validation").innerHTML = y;
                  document.getElementById("submit").disabled = true;
              }
             }
  };
  xhttp.open("GET", "validateProId?id="+x, true);
  xhttp.send();
}
</script>

    </body>
</html>

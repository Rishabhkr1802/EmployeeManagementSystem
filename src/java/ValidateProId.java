import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Bharat Bhardwaj
 */
@WebServlet(urlPatterns = {"/validateProId"})
public class ValidateProId extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try{  
Class.forName("org.apache.derby.jdbc.ClientDriver");  
            Connection con=DriverManager.getConnection(  
"jdbc:derby://localhost:1527/EmployeeManagementSystem","hritik","hritik");   
Statement stmt=con.createStatement();  
            ResultSet rs=stmt.executeQuery("select \"id\" from \"project\" where \"id\" = " + request.getParameter("id")); 
if(rs.next()){
    response.getWriter().write("Id already exists! Please choose a different one.");
    }else{
response.getWriter().write("Valid");}
con.close();  
}catch(Exception e){}  
}  
}
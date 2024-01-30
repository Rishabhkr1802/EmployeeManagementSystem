import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(urlPatterns = {"/grantLeave"})
public class GrantLeave extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try{  
Class.forName("org.apache.derby.jdbc.ClientDriver");  
            Connection con=DriverManager.getConnection(  
"jdbc:derby://localhost:1527/EmployeeManagementSystem","hritik","hritik");   
Statement stmt=con.createStatement();  
String sql = "update \"leaves\" set \"status\" ="+ true+" where \"id\"="+request.getParameter("id");
stmt.executeUpdate(sql);
con.close();  
}catch(Exception e){ System.out.println(e);}  
}  
}    
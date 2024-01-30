
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
//import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ViewProjects extends HttpServlet {

    public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        PrintWriter out = res.getWriter();
        res.setContentType("text/html");
        out.println("<html><body>");

//        out.println("<table border=1 width=50% height=50%>");
//        out.println("<tr><th>Project Id</th><th>Project Title</th><th>Duration</th><th>Type</th><th>Category</th><tr>");
//
//        out.println("</table>");
//        out.println("</body></html>");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ems?", "root", "root");
//            PreparedStatement st = con.prepareStatement("select * from project");
//            ResultSet rs = st.executeQuery();

            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from project");

            out.println("<table border=1 width=50% height=50%>");
            out.println("<tr><th>Project Id</th><th>Project Title</th><th>Duration</th><th>Type</th><th>Category</th><tr>");

            while (rs.next()) {
                String id = rs.getString("proj_id");
                String title = rs.getString("proj_time");
                String time = rs.getString("Time");
                String type = rs.getString("proj_type");
                String cat = rs.getString("proj_cate");
                out.println("<tr><td>" + id + "</td><td>" + title + "</td><td>" + time + "</td><td>" + type + "</td><td>" + cat + "</td></tr>");
            }
            out.println("</table>");
            out.println("</html></body>");
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

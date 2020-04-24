

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
 * Servlet implementation class headrequestdeciding
 */
@WebServlet("/headrequestdeciding")
public class headrequestdeciding extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			
			Class.forName("com.mysql.jdbc.Driver");
		    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root"); 
		    String s="";
		    Statement stmt=con.createStatement();
		ResultSet rs= stmt.executeQuery("select * from teammemberrequest");
		PrintWriter pw=response.getWriter();
			pw.println("<html><style>\r\n" + 
					"table, th, td {\r\n" + 
					"  border: 1px solid black;\r\n" + 
					"}\r\n" + 
					"</style><table cellpadding=\"10\">");
			while(rs.next())
			{
			pw.print("<tr><th>"+rs.getString("id")+"</th><th>"+rs.getString("name")+"</th><th>"+rs.getString("role")+"</th><th>\r\n" + 
					"1\r\n" + 
					"<form action=\"teammeberrequest\" method=\"Post\">\r\n" + 
					"    \r\n" + 
					"    <input type=\"submit\" value=\"update\">\r\n" + 
					"</form></th>"+"</td>");
			}
			pw.print("</table></html>");

		
	}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}

}

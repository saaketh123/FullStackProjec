

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class permissionrequest
 */
@WebServlet("/teammemberrequest")
public class teammemberrequest extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int  a=Integer.parseInt(request.getParameter("value1"));
		String b=request.getParameter("value2");
		String c =request.getParameter("comment");
	

		try {
			
			Class.forName("com.mysql.jdbc.Driver");
		    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root"); 
		    PreparedStatement ps1=con.prepareStatement(" insert into teammemberrequest values(?,?,?)");
		    ps1.setString(2, b);
		    ps1.setInt(1,a);
		    ps1.setString(3,c);
		    
		    int i=ps1.executeUpdate();
		    if(i==1) 
		    {
		      PrintWriter writer1=response.getWriter();
		    	  
      		  writer1.write("<html>");
      		  writer1.write("<head>");
      		  writer1.write("</head>");
      		  writer1.write("<body>");
      		  writer1.write("YOUR REQUEST HAS BEEN SUCCESSFULLY SENT");
      		  writer1.write("<body>");
      		  writer1.write("</html>");
      		 

      		   
      		  
      		  
		   
		   }
		}
		catch(Exception e)
		{
			System.out.println(e);
		}

}
}

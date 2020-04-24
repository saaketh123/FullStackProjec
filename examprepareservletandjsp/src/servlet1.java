import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class servlet1
 */
@WebServlet("/servlet1")
public class servlet1 extends HttpServlet{
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	System.out.println("hi");
	String a =request.getParameter("value1");
	int  b=Integer.parseInt(request.getParameter("value2"));
System.out.println(a);
System.out.println(b);
	
	try {
		
		Class.forName("com.mysql.jdbc.Driver");
	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/world", "root", "root"); 
	    PreparedStatement ps1=con.prepareStatement(" insert into chalmohanranga values(?,?)");
	    ps1.setString(1, a);
	    ps1.setInt(2,b);
	    
	    ps1.executeUpdate();
	    
	    
	   /*
	   PreparedStatement ps1=con.prepareStatement("select * from chalmohanranga where id=?");
       

	 

	            ps1.setInt(1,b);
	            ResultSet rs=ps1.executeQuery();
	            System.out.println(rs);
	            PrintWriter writer1=response.getWriter();
	            rs.beforeFirst();
	            
	                      
	            		  writer1.write("<html>");
	            		  writer1.write("<head>");
	            		  writer1.write("</head>");
	            		  writer1.write("<body>");
	            
	            		 
	            while(rs.next()){
	            	System.out.println("hello");
	                //Retrieve by column name
	            	  String first = rs.getString("name");
	                int id  = rs.getInt("id");
	                System.out.println(first);
	              System.out.println(id);
	                writer1.write(""+first+"<br>");
	        	  writer1.write(""+id+"<br>");
	             }
	                        
	           writer1.write("</body>");
      		  writer1.write("</html>");
      		  */
	            ps1.close();
	            con.close();
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}


	
	}

}

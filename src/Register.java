

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
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Register() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String age = request.getParameter("age");
		String gender = request.getParameter("gender");
		String city = request.getParameter("city");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		PrintWriter pw = response.getWriter();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/carshopping","root","");
			PreparedStatement pst = conn.prepareStatement("INSERT INTO `cust_login`(`username`, `password`) VALUES ('"+username+"','"+password+"')");
			pst.executeUpdate();
			PreparedStatement pst1 = conn.prepareStatement("insert into customer_registration values(?,?,?,?,?,?,?)");  
		    pst1.setString(1, username);
		    pst1.setString(2, password);
		    pst1.setString(3, age);
		    pst1.setString(4, gender);
		    pst1.setString(5, city);
		    pst1.setString(6, email);
		    pst1.setString(7, address);
		   int a =  pst1.executeUpdate();
		    if(a>0) {
		    	
		    	pw.println("<script language=javascript>");
		    	pw.println("alert('Registration  was Successfull! ')");
		    	pw.println("location='index.jsp';");
		    	pw.println("</script>");
		    	
		   
		    }else {
		    	pw.println("<script language=javascript>");
		    	pw.println("alert('Something  went  Wrong! ')");
		    	pw.println("location='index.jsp';");
		    	pw.println("</script>");
		    }
			
		}catch(Exception e ) {
			
			e.getMessage();
		}
	}

}



import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.org.apache.xml.internal.security.encryption.EncryptedData;

import java.security.*;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
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


//		PrintWriter pw = response.getWriter();
//		ResultSet rs;
//		String username=request.getParameter("username");
//		String password=request.getParameter("password");
//		String algorithm="";
//		byte[] unencodedPassword = password.getBytes();
//		MessageDigest md = null;
//		try {
//		md = MessageDigest.getInstance("MD5");
//		} catch (Exception e) {}
//		md.reset();
//		md.update(unencodedPassword);
//		byte[] encodedPassword = md.digest();
//		StringBuffer buf = new StringBuffer();
//		for (int i = 0; i < encodedPassword.length; i++) {
//		if (((int) encodedPassword[i] & 0xff) < 0x10) {
//		buf.append("0");
//		}
//		buf.append(Long.toString((int) encodedPassword[i] & 0xff, 16));
//		}
//		String passw=buf.toString();
//		String connectionURL = "jdbc:mysql://localhost:3306/carshopping";;
//		Connection con=null;
//		try{
//		Class.forName("com.mysql.jdbc.Driver");
//		con = DriverManager.getConnection(connectionURL, "root", "");
//		PreparedStatement ps = con.prepareStatement("INSERT INTO cust_login(username,password) VALUES(?,?)");
//		ps.setString(1,username);
//		ps.setString(2,passw);
//		int i = ps.executeUpdate();
//		ps.close();
//		con.close();
		try {
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/carshopping","root", "");
			PreparedStatement pst = con.prepareStatement("select * from cust_login where username='"+username+"' and password='"+password+"'");
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				HttpSession session = request.getSession();
				session.setAttribute("username", username);
				RequestDispatcher rd = request.getRequestDispatcher("display.jsp");
				rd.forward(request, response);	
			}else {
				PrintWriter out = response.getWriter();
				
				out.print("<h1>Login failed</h1>");
			}
		}catch(Exception e) {
			e.getMessage();
		}
		}
}



import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class CarDetails
 */

@WebServlet("/CarDetails")
@MultipartConfig(maxFileSize = 16177216)
public class CarDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CarDetails() {
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
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String connectionURL = "jdbc:mysql://localhost:3306/carshopping";
		String user = "root";
		String pass = "";
 
		int result = 0;
		Connection con = null;
		String name = req.getParameter("car_name");
		Part part = req.getPart("image");
		String model = req.getParameter("car_model");
		String engine_type = req.getParameter("engine_type");
		String price = req.getParameter("car_price");
		String discount =  req.getParameter("car_discount");
 
		if(part != null){
			try{
				Class.forName("com.mysql.jdbc.Driver");
			    con = DriverManager.getConnection(connectionURL, user, pass);
			    
			    PreparedStatement ps = con.prepareStatement("INSERT INTO `car_details`(`car_name`, `car_image`, `car_model`, `engine_type`, `car_price`, `car_discount`) VALUES (?,?,?,?,?,?)");
			    InputStream img = part.getInputStream();
			    ps.setString(1, name);
			    ps.setBlob(2, img);
			    ps.setString(3, model);
			    ps.setString(4, engine_type);
			    ps.setString(5, price);
			    ps.setString(6, discount);
			    result = ps.executeUpdate();
			}
			catch(Exception e){
				e.printStackTrace();
			}	
			finally{
				if(con != null){
					try{
						con.close();
					}
					catch(Exception e){
						e.printStackTrace();
					}
				}
			}
		}
		
		if(result > 0){
	    	resp.sendRedirect("result.jsp?message=Image+Uploaded");
	    }
		else{
			resp.sendRedirect("result.jsp?message=Some+Error+Occurred");
		}
	

	    }
	}




import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class simple
 */
@WebServlet("/simple")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10, maxFileSize = 1024 * 1024 * 50, maxRequestSize = 1024 * 1024 * 100)
public class simple extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public simple() {
        super();
        // TODO Auto-generated constructor stub
    }
//  this if directory name where the file will be uploaded and saved
  private static final String SAVE_DIR = "cars";

//  this is the method which is created by system it self
  protected void processRequest(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
      response.setContentType("text/html;charset=UTF-8");
      PrintWriter out = response.getWriter();
  

//          this tyr is created by me for the connection of database
          try {

//              this is the path provide by me to save the image 
              String savePath = "C:\\CarStoreProject\\CarStore\\WebContent\\" + File.separator + SAVE_DIR; 
/*in place of C: you can place a path wher you need to save the image*/

//              this comment will picup the image file and have convert it into file type
              File fileSaveDir = new File(savePath);
              if (!fileSaveDir.exists()) {
                  fileSaveDir.mkdir();
              }

//              this two comment will take the name and image form web page
              String name = request.getParameter("name");
              Part part = request.getPart("file");

//              this comment will extract the file name of image
              String fileName = extractFileName(part);

//              this will print the image name and user provide name
              out.println(fileName);
              out.println("\n" + name);

              /*if you may have more than one files with same name then you can calculate 
some random characters and append that characters in fileName so that it will 
make your each image name identical.*/
              part.write(savePath + File.separator + fileName);

              /* 
              You need this loop if you submitted more than one file
              for (Part part : request.getParts()) {
              String fileName = extractFileName(part);
              part.write(savePath + File.separator + fileName);
          }*/
//          connectio to database
              Class.forName("com.mysql.jdbc.Driver");
              Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/carshopping", "root", "");

//              query to insert name and image name
              String query = "INSERT INTO image_link (name,photourl) values (?, ?)";

              PreparedStatement pst;
              pst = con.prepareStatement(query);
              pst.setString(1, name);
              String filePath = savePath + File.separator + fileName;
              pst.setString(2, filePath);
              pst.executeUpdate();

          } catch (Exception ex) {
              out.println("error" + ex);
          }

      }


//  the extractFileName() is method used to extract the file name
  private String extractFileName(Part part) {
      String contentDisp = part.getHeader("content-disposition");
      String[] items = contentDisp.split(";");
      for (String s : items) {
          if (s.trim().startsWith("filename")) {
              return s.substring(s.indexOf("=") + 2, s.length() - 1);
          }
      }
      return "";
  }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
  @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	  processRequest (request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
  @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	  processRequest(request, response);
	}

}

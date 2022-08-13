import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;


@WebServlet("/Data")
public class Data extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Data() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
		Connection con=DBConnection.getMyConnection();
		
		HttpSession session=request.getSession(); 
 		PrintWriter out = response.getWriter();
 		
 		String source=request.getParameter("source");  
		String destination=request.getParameter("destination"); 
		String traveldate=request.getParameter("date");  
		String str="select * from airline where source='"+source+"' and destination='"+destination+"' and dt='"+traveldate+"';";
		
		//to execute query create object of Statement
		Statement  s=con.createStatement();
		//get ResultSet
		ResultSet rs =s.executeQuery(str);
		HashMap<String, String> map = new HashMap<>();
		while(rs.next()) {
			map.put(rs.getString("flight"),rs.getString("cost"));
			
				
		}
				session.setAttribute("details", map);
		
		
		ServletContext servletcontext = getServletContext();
		servletcontext.setAttribute("source", source);
		servletcontext.setAttribute("destination", destination);
		servletcontext.setAttribute("date", traveldate);
		servletcontext.setAttribute("map", map);
		
		if(map.isEmpty()) {
			out.println("OOPS! No flights found!");
		}
		else {
			RequestDispatcher rd = request.getRequestDispatcher("BookingDetails.jsp");
			rd.forward(request, response);
		}

		
			}catch(Exception e) {
				e.printStackTrace();
			}	
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

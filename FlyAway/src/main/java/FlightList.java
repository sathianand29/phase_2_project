

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class FlightList
 */
@WebServlet("/FlightList")
public class FlightList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FlightList() {
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
	 		 
			
			String str="select flight, source, destination, cost, dt from airline;";
			
			//to execute query create object of Statement
			Statement  s=con.createStatement();
			//get ResultSet
			ResultSet rs =s.executeQuery(str);
		
			List<String[]> map = new ArrayList<>();
			while(rs.next()) {
				String[] flight=new String[5];
				flight[0]=rs.getString("flight");
				flight[1]=rs.getString("source");
				flight[2]=rs.getString("destination");
				flight[3]=rs.getString("cost");
				flight[4]=rs.getString("dt");
				
				map.add(flight);
				
					
			}		
			session.setAttribute("map", map);
			out.println(map);
			RequestDispatcher rd = request.getRequestDispatcher("AvailableFlights.jsp");
			rd.forward(request, response);
			
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

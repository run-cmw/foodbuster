package servlet;

import dal.*;
import model.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.annotation.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/findestablishmentsbyname")
public class FindEstablishmentsByName extends HttpServlet {
	
	protected EstablishmentsDao establishmentsDao;
	
	@Override
	public void init() throws ServletException {
		establishmentsDao = EstablishmentsDao.getInstance();
	}
	 
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// Map for storing messages.
        Map<String, String> messages = new HashMap<String, String>();
        req.setAttribute("messages", messages);

        Establishments establishment = null;
        
        // Retrieve and validate Establishment Name.
        String estabName = req.getParameter("estabname");
        if (estabName == null || estabName.trim().isEmpty()) {
            messages.put("success", "Please enter a valid Establishment Name.");
        } else {
        	// Retrieve Establishments, and store as a message.
        	try {
            	establishment = establishmentsDao.getEstablishmentByName(estabName);
            } catch (SQLException e) {
    			e.printStackTrace();
    			throw new IOException(e);
            }
        	messages.put("success", "Displaying result for " + estabName);
        	// Save the previous search term, so it can be used as the default
        	// in the input box when rendering FindEstablishmentsByName.jsp.
        	messages.put("previousEstablishment", estabName);
        }
        req.setAttribute("establishment", establishment);
        
        req.getRequestDispatcher("/FindEstablishmentsByName.jsp").forward(req, resp);
	}
	
	@Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
    		throws ServletException, IOException {
        // Map for storing messages.
        Map<String, String> messages = new HashMap<String, String>();
        req.setAttribute("messages", messages);

        Establishments establishment = null;
        
     // Retrieve and validate Establishment Name.
        String estabName = req.getParameter("estabname");
        if (estabName == null || estabName.trim().isEmpty()) {
            messages.put("success", "Please enter a valid Establishment Name.");
        } else {
        	// Retrieve Establishments, and store as a message.
        	try {
            	establishment = establishmentsDao.getEstablishmentByName(estabName);
            } catch (SQLException e) {
    			e.printStackTrace();
    			throw new IOException(e);
            }
        	messages.put("success", "Displaying result for " + estabName);
        	// Save the previous search term, so it can be used as the default
        	// in the input box when rendering FindEstablishmentsByName.jsp.
        }
        req.setAttribute("establishment", establishment);
        
        req.getRequestDispatcher("/FindEstablishmentsByName.jsp").forward(req, resp);
	}
}
package org.eustrosoft.contractpkg;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ContractServlet extends HttpServlet{
	
	
	Members member;
	
	@Override
	public void init() throws ServletException {
		super.init();
		
		member = new Members("EXAMPLESD");
		/*try {
			ControllerContract controller = new ControllerContract();
		} catch (NumberFormatException | IOException e) {
			e.printStackTrace();
		}*/
	}
	@Override
	protected void doGet(HttpServletRequest req, 
			             HttpServletResponse resp) 
			             throws ServletException, IOException {
        System.out.println("Enter doGet ContractServlet");

        String action = req.getParameter("member");
        req.setAttribute("member", member);

        System.out.println(action);
        
        switch (action == null ? "member" : action) {
            case "update":
                req.getRequestDispatcher("/update.jsp").forward(req, resp);
                break;
            case "member":
            default:
                req.getRequestDispatcher("/entiring.jsp").forward(req, resp);
                break;
        }
	}
}

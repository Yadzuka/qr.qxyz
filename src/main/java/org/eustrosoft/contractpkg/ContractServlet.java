package org.eustrosoft.contractpkg;

import org.eustrosoft.contractpkg.Model.Members;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ContractServlet extends HttpServlet{
	
	Members member;
	
	@Override
	public void init() throws ServletException {
	    Members members = new Members();
		super.init();

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
        String action = req.getParameter("");
        req.setAttribute("member", member);

        System.out.println(action);
        
        switch (action == null ? "member" : action) {
            case "update":
                req.getRequestDispatcher("/update.jsp").forward(req, resp);
                break;
            case "member":
            default:
                req.getRequestDispatcher("/members.jsp").forward(req, resp);
                break;
        }
	}
}

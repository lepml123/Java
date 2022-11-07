package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ktdn
 */
@WebServlet("/ktdn")
public class ktdn extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ktdn() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String un = request.getParameter("txtun");
		String pass = request.getParameter("txtpass");
		if (un!=null&&pass!=null) {
			if(un.equals("abc")&&pass.equals("123")) {
				HttpSession session=request.getSession();
				session.setAttribute("dn", un);
				 RequestDispatcher rd = request.getRequestDispatcher("htsach.jsp");
	                rd.forward(request, response);
	            } else {    //Dang nhap sai
	                RequestDispatcher rd = request.getRequestDispatcher("dangnhap.jsp?kt=1");
	                rd.forward(request, response);
	            }
	        }else { //chay Lan dau
	            RequestDispatcher rd = request.getRequestDispatcher("dangnhap.jsp");
	            rd.forward(request, response);
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

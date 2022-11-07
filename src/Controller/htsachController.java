package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.loaibean;
import bean.sachbean;
import bo.loaibo;
import bo.sachbo;

/**
 * Servlet implementation class htsachController
 */
@WebServlet("/htsachController")
public class htsachController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public htsachController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
        loaibo lbo = new loaibo();
        ArrayList<loaibean> dsloai = lbo.getloai();
        request.setAttribute("dsloai", dsloai);

        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        sachbo sbo=new sachbo(); 
        ArrayList<sachbean> dssach = sbo.getsach();
        String ml=request.getParameter("ml"); 
        String key=request.getParameter("txttk"); 
         if(ml!=null) 
             dssach=sbo.TimMa(ml); 
         else if(key!=null) 
              dssach=sbo.Tim(key);

         request.setAttribute("dssach", dssach);


        RequestDispatcher rd = request.getRequestDispatcher("htsach.jsp");
        rd.forward(request, response);
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

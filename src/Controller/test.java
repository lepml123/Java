package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class test
 */
@WebServlet("/test")
public class test extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public test() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		out.print("<html><body> thế anh ngu </body></html>");
		String aa=request.getParameter("txta");
        String bb=request.getParameter("txtb");
        long kq=0;
        if(aa!=null&&bb!=null) {
             long a=Long.parseLong(aa);
             long b=Long.parseLong(bb);
             if(request.getParameter("butc")!=null)
                 kq=a+b;
             request.setAttribute("aa", a);
             request.setAttribute("bb", b);
             request.setAttribute("kq", kq);
             request.setAttribute("ds", kq);
        }
             RequestDispatcher rd= request.getRequestDispatcher("maytinh.jsp");
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

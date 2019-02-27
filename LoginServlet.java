package serv;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import serv.bean.LoginBean;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		out.println("Login first");
		RequestDispatcher dt=request.getRequestDispatcher("login.html");
		dt.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname=request.getParameter("t1");
		String pwd=request.getParameter("t2");
		LoginBean eb1=new LoginBean();
		eb1.setUname(uname);
		eb1.setPwd(pwd);
		int result=eb1.verify();
		if(result==1)
		{
			RequestDispatcher dt=request.getRequestDispatcher("productList.jsp");
			dt.forward(request, response);
		}
		else if(result==2)
		{
			PrintWriter out1=response.getWriter();
			out1.println("<h1>Your Access has been Blocked.  Please contact respective authority</h1>");
			RequestDispatcher dt=request.getRequestDispatcher("login.html");
			dt.include(request, response);
		}
		else if(result==3)
		{
			PrintWriter out1=response.getWriter();
			out1.println("<h1>You have crossed the maximum try limit. Your account is blocked.Please contact respective authority</h1>");
			RequestDispatcher dt=request.getRequestDispatcher("login.html");
			dt.include(request, response);
		}
		else
		{
			PrintWriter out1=response.getWriter();
			out1.println("<h1>Please login With Valid Credentials</h1>");
			RequestDispatcher dt=request.getRequestDispatcher("login.html");
			dt.include(request, response);
			
		}
	}

}

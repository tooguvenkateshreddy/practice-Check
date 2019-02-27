package serv;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Product;
import com.ProductImp;
import com.ProductInterface;



/**
 * Servlet implementation class ProductServ
 */
public class ProductServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductServ() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doset(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doset(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		out.println("Login first");
		RequestDispatcher dt=request.getRequestDispatcher("login.html");
		dt.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String pid=request.getParameter("t1");
		String category=request.getParameter("category");
		String name=request.getParameter("t2");
		String desc=request.getParameter("t3");
		float price=Float.parseFloat(request.getParameter("t4"));
		String brand=request.getParameter("t5");
		float rating=Float.parseFloat(request.getParameter("t6"));
		
		Product p=new Product(pid,category,name,desc,price,brand,rating);
		ProductInterface sp=new ProductImp();
		boolean res=sp.insert(p);
		if(res)
		{
			PrintWriter out1=response.getWriter();
			out1.println("<h1>Insertion success</h1>");
			RequestDispatcher dt=request.getRequestDispatcher("products.jsp");
			dt.include(request, response);
		}
		else
		{
			PrintWriter out1=response.getWriter();
			out1.println("<h1>Insertion Failed. Please try again</h1>");
			RequestDispatcher dt=request.getRequestDispatcher("products.jsp");
			dt.include(request, response);
		}
		
	}

}

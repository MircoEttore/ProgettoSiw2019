package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Demo")
public class Demo extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html");
		PrintWriter printWriter = response.getWriter();
		printWriter.println("<html>");
		printWriter.println("<head>");
		//RequestDispatcher requestDispatcher =request.
		printWriter.println("</head>");
		printWriter.println("<body>");
		printWriter.println("<form action=\"Prova.jsp\">");
		
		printWriter.println("username:<input type=\"text\" name=\"username\">");
		printWriter.println("<input type=\"submit\" value=\"Submit\">");

		printWriter.println("</form>");
		printWriter.println("</body>");
		printWriter.println("</html>");
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

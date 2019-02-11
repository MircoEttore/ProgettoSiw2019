package servlet;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import model.Artista;
import model.Canzone;

import persistance.DatabaseManager;
import persistence.dao.ArtistaDao;
import persistence.dao.CanzoneDao;

public class Search extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String search = request.getParameter("search");

		if (search != null && !search.equals("")) {
			request.setAttribute("search", search);
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("Ciao");
		  String searchQuery = request.getParameter("search");
		    CanzoneDao udao = DatabaseManager.getInstance().getDaoFactory().getCanzoneDao() ; 
			  ArtistaDao adao = DatabaseManager.getInstance().getDaoFactory().getArtistaDAO() ; 

		    List<Canzone>c=new ArrayList();
		    List<Artista>a=new ArrayList();
		    c=udao.findCanzone(searchQuery);
		    a=adao.findArtista(searchQuery);
		    if (c!= null ) {
		     for (Canzone canzone : c) {
		      System.out.println( canzone.getTitolo());
		   }
		    }
		  if (searchQuery != null && !searchQuery.equals("")) {
		   request.setAttribute("search", searchQuery);
		   request.getRequestDispatcher("recordottenutijsp.jsp").forward(request, response);
		

		  } 
		 }
		
		
	}
	/*	System.out.println("Ciao");
		String searchQuery = request.getParameter("search");
		System.out.println();
		  CanzoneDao udao = DatabaseManager.getInstance().getDaoFactory().getCanzoneDao() ; 
		  ArtistaDao adao = DatabaseManager.getInstance().getDaoFactory().getArtistaDAO() ; 
		  List<Canzone>c=new ArrayList();
			 List<Artista> a=new ArrayList<>();
			 a=adao.findArtista(searchQuery);
			 c=udao.findCanzone(searchQuery);
		  int i=0;
			  for (Canzone canzone : c) {
				  System.out.println( );
					response.setContentType("text/html");
					response.setCharacterEncoding("UTF-8");
				  System.out.println(i++);
					request.setAttribute("message",canzone.getTitolo()+" <br> ");
				
					response.getWriter().write(canzone.getTitolo());
			}
				request.setAttribute("search", searchQuery);
				request.getRequestDispatcher("Search.jsp").forward(request, response);
			  request.getRequestDispatcher("recordottenutijsp.jsp").forward(request, response);
			 /* for (Artista artista :a) {
				  response.setContentType("text/plain");
					response.setCharacterEncoding("UTF-8");
					response.getWriter().write(artista.getNomeArtista());
				  System.out.println( artista.getNomeArtista());
			}*/
		/*f (searchQuery != null && !searchQuery.equals("")) {
			request.setAttribute("search", searchQuery);
			request.getRequestDispatcher("Search.jsp").forward(request, response);
			System.out.println("Cia1o");

		} else {
			doGet(request, response);
		}*/
	//	String data = "Hello World!";
	
	//}
		
	
		


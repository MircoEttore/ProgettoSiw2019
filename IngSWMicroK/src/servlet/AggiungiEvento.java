package servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Artista;
import model.Evento;
import persistance.DatabaseManager;
import persistance.JDBC.EventoDaoJDBC;
import persistence.dao.EventoDao;
/**
 * Servlet implementation class AggiungiEvento
 */
@WebServlet("/AggiungiEvento")
public class AggiungiEvento extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/** 
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String artista = request.getParameter("artista"); 
		String data = request.getParameter("data"); 
		String luogo = request.getParameter("luogo") ; 
		String nomeEvento = request.getParameter("nome") ; 
		String collegamento = request.getParameter("link") ; 
		
		String startDate=data;
		SimpleDateFormat sdf1 = new SimpleDateFormat("dd-MM-yyyy");
		java.util.Date date = null;
		try {
			date = sdf1.parse(startDate);
		} catch (ParseException e1) {
			e1.printStackTrace();
		}
		java.sql.Date dataEvento = new java.sql.Date(date.getTime()); 
		Evento e = new Evento() ; 
		Artista artistaTmp = new Artista() ; 
		artistaTmp.setNomeArtista(request.getParameter("artista"));
		
		e.setArtista(artistaTmp);
		e.setLuogoEvento(request.getParameter("luogo"));
		e.setNomeEvento(request.getParameter("nome"));
		e.setPrezzoEvento(Double.valueOf(request.getParameter("prezzo")));
		e.setDataEvento(dataEvento); 
		
		EventoDao eventoDao = DatabaseManager.getInstance().getDaoFactory().getEventoDAO() ; 
		try {
			eventoDao.save(e) ;
		} catch (SQLException e1) {
			e1.printStackTrace();
		} 
		System.out.println("AggiungiEvento 67 ");
		
		this.getServletContext().getRequestDispatcher("/LoginPage.jsp").forward(request, response);

	}
}

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="persistance.DatabaseManager"%>
<%@page import="model.Canzone"%>
<%@page import="model.Artista"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@page session="true"%>

<!-- Custom styles for this template -->
<link href="css/RecordOttenutiCustom.css" rel="stylesheet">


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<!-- Bootstrap core CSS -->
<link href="bootstrap-4.1.3/css/bootstrap.min.css" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="css/NewFile.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>


	<div class="searchbar">
		<nav class="navbar navbar-light bg-light fixed-top">
			<a class="scritta navbar-brand , form-inline md-3">Navbar</a>
			<div class="container">
				<form class="form-inline md-3" action="search" method="POST">
					<input class="form-control mr-sm-2" type="search"
						placeholder="Search" aria-label="Search" name="search">
					<button class="btn btn-outline-success my-20 my-sm-10"
						type="submit">Search</button>
				</form>
				<form>
					<div class="form-inline md-3">
						<ul class="nav navbar-nav , form-inline md-3">
							<li><button type="submit" class="btn navbar-btn btn-danger"
									name="logout" id="logout" value="Log Out">Log Out</button></li>
						</ul>
					</div>
				</form>
			</div>
		</nav>
	</div>

	<div class="transparentlayer"></div>

<div>
<br>
</div>


	<form class="RisultatoArtista">
		<a class="lead">Artisti : <br></a> <a class="lead" href=""><br></a>
		
		
		
		
		<%
			String searchQuery1 = (String) request.getAttribute("search");
			System.err.print(searchQuery1);

			if (searchQuery1 != null && !searchQuery1.equals("")) {
				List<Artista> categories = DatabaseManager.getInstance().getDaoFactory().getArtistaDAO()
						.findArtista(searchQuery1);
				for (Artista artista : categories) {
					//out.println("<div style=\"background-color:red;\">" + song.getArtista().getNomeArtista()+ "</div");
					/*out.println("<li  class=\"pull-left\">" + "autore: " + artista.getNomeArtista() + " "
							+ "<button type=\"submit\"   name=\"Aggiungi\" id=\"logout\"  value=\"Log Out\"> "
							+ "Apri" + "</button> </li>");
					*/
					out.println("<div class=\"col-md-4\">+ <div class=\"card profile-card-1\">"+" <img src=\"https://images.pexels.com/photos/459225/pexels-photo-459225.jpeg?auto=compress&cs=tinysrgb&h=650&w=940" + " class=\"background\"/>");
					out.println(" <img src=\"assets/Ligabue.png\" alt=\"profile-image\" class=\"profile\"/>  <div class=\"card-content\">"+"<a style=\"color:white;\" href=\"PaginaArtista.jsp\">"+artista.getNomeArtista()+"</a > </div> </div>");
				
				}

			}
		%>
	</form>



	<form class="RisultatoCanzone">
		<a class="lead">Canzoni : </a>
		<%
			String searchQuery = (String) request.getAttribute("search");
			System.err.print(searchQuery);

			if (searchQuery != null && !searchQuery.equals("")) {
				List<Canzone> categories = DatabaseManager.getInstance().getDaoFactory().getCanzoneDao()
						.findCanzone(searchQuery);
				out.println(
						"<table class=\"table table-striped\"> <thead> <tr>   <th>Artista</th>  <th>Titolo</th>  <th>Album</th>  </tr> </thead>     <tbody>");

				for (Canzone song : categories) {
					//out.println("<div style=\"background-color:red;\">" + song.getArtista().getNomeArtista()+ "</div");
					/*out.println("<li  class=\"pull-left\">" + "autore: " + song.getArtista().getNomeArtista() + " "
							+ "titolo" + song.getTitolo()
							+ "<button type=\"submit\" class=\"btn navbar-btn\"  name=\"Aggiungi\" id=\"logout\"  value=\"Log Out\"> "
							+ "Aggiungi Al Carrello" + "</button> </li>");
*/
					out.println(" <tr> <td>"+ song.getArtista().getNomeArtista()
							+ "</td><td>"+song.getTitolo()+"</td>  <td>"+song.getAlbum() +"</td>"+"<td><button  class=\"btn navbar-btn\"  name=\"Aggiungi\">  Apri </button>"+"</td> </tr>");

					
					
				}
				out.println("</tbody></table>");

			}
		%>

	</form>

	
</body>
</html>
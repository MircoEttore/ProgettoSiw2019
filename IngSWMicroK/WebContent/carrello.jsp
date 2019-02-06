<%@page import="model.Utente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="persistance.DatabaseManager"%>
<%@page import="model.Canzone"%>
<%@page import="model.Artista"%>

<%@page import="persistence.dao.UtenteDao"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@page session="true"%>
<!--  -->
	
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Simple Sidebar - Start Bootstrap Template</title>
<script src="js/jquery-3.2.1.min.js"></script>
<script src="bootstrap-4.1.3//js/bootstrap.min.js"></script>
<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/searchbar.css" rel="stylesheet" type="text/css">

<link href="css/simple-sidebar.css" rel="stylesheet">

<link href="css/searchbar.css" rel="stylesheet" type="text/css">


<link rel="stylesheet" type="text/css"
	href="styles/bootstrap-4.1.2/bootstrap.min.css">
	
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="plugins/OwlCarousel2-2.3.4/owl.carousel.css">
<link rel="stylesheet" type="text/css"
	href="plugins/OwlCarousel2-2.3.4/owl.theme.default.css">
<link rel="stylesheet" type="text/css"
	href="plugins/OwlCarousel2-2.3.4/animate.css">
<link rel="stylesheet" type="text/css" href="styles/main_styles.css">
<link rel="stylesheet" type="text/css" href="styles/responsive.css">

</head>
<body style="background-color: #313947 ; color: white; ">
	<c:if test="${username != null}">
	

 <!-- inizio navbar -->
 <div class="row">
  <nav class="navbar navbar-light bg-light fixed-top">
   <a class="scritta navbar-brand" style="color:#387044" >MicroK</a>
   <div class="container">
    <form class="form-inline m-auto">
     <input class="form-control mr-sm-2" type="search"
      placeholder="Search" aria-label="Search">
     <button class="btn btn-outline-success my-20 my-sm-10"
      type="submit" style="color: ">Search</button>
    </form>
    <form class="form-inline m-5" action="">
					<button class="transparentButton">
						<i class="fa fa-shopping-cart prefix white-text active"></i>
					</button>
				</form>
    <form>
     <div class="pull-left">
      <ul class="nav navbar-nav">
     
     <p>Sei loggato come ${username}</p>
     
   <li><button  type="button"  onclick="location.href='Logout?logout=true' " class="btn navbar-btn btn-danger"  value="Log Out">Log Out</button></li>
        
      </ul>
     </div>
    </form>
   </div>
  </nav>
 </div>
 <!-- fine navbar -->
	

<div style="height:150px"></div>

	<div>
		<div class="col-sm-2" style="position: fixed; background-color:#2d3542;">
			<ul class="sidebar-nav">
				    <li class="sidebar-brand"><a href="#">Home</a></li>
    				<li><a href="#">Profilo</a></li>
    				<li><a href="#Catalogo">Catalogo Musicale</a></li>
    				<li><a href="#Libreria">Libreria</a></li>
			</ul>
		</div>
		<div class="col-sm-10" style="padding-left: 350px">
			<div>
				<div class="bigcart"></div>
				<h1>Your shopping cart</h1>
			</div>
			<div>
				<ul>
					<li class="row">
						<form class="form-inline m-auto"><span>Canzone</span></form>
						<form class="form-inline m-auto"><span>Prezzo</span></form>
					</li>
					
					<%
				      System.out.print("-1-1-1-1-");

					if (request.getSession().getAttribute("username") != null	&& !request.getSession().getAttribute("username").equals("")) 
				{
			System.out.println("Sono dentro");
						UtenteDao u=DatabaseManager.getInstance().getDaoFactory().getUtenteDAO();
				        Utente utente=new Utente();
				        utente=u.findByPrimaryKey1((String) session.getAttribute("username"));
				       
					     

						
						int idCarrello=DatabaseManager.getInstance().getDaoFactory().getUtenteDAO().CercaIdCarrello( utente.getIdUtente());
						 System.out.print(idCarrello);
						List<Canzone>lista=new ArrayList<>();
						lista=	DatabaseManager.getInstance().getDaoFactory().getUtenteDAO().CercaCanzoniCarrello(idCarrello);
						System.out.println("La size è :"+lista.size());

							    for (Canzone song : lista)
							    	{
									    out.println("<li class=\"row\"><form><span class=\"itemName\">"+song.getArtista().getNomeArtista()+"  "+song.getTitolo()+"</span></form>"
									    		+"<form class=\"form-inline m-auto\"><span class=\"popbtn\"><a class=\"arrow\"></a></span></form>"
									    		+ "<form class=\"form-inline m-auto\"><span class=\"price\">"+song.getPrezzo()
									    		+"</span><span style=\"padding-left: 50px ; \"></span><button class=\"btn navbar-btn btn-danger\" onclick=\"location.href='/delete?cartCanzoneId="
									    		+ song.getIdCanzone()+"&IdCart="+idCarrello+"&from=carrello.jsp' \" >rimuovi</button></form></li>");
									
									    
									    //out.print("<a href=\"delete?cartCanzoneId=" + song.getIdCanzone()+"&IdCart="+idCarrello+"&from=carrello.jsp\" class=\"btn btn-default add-to-cart\">");
									    System.out.print("1111");
								    }
			    }
					%>
				</ul>
				<div>
<button class="btn btn-outline-success my-20 my-sm-10" onclick="location.href='Cart.jsp'">CheckOut</button>
</div>
				
				<div id="popover" style="display: none">
				<a href="#"><span class="glyphicon glyphicon-pencil"></span></a>
				<a href="#"><span class="glyphicon glyphicon-remove"></span></a>
			</div>
				
			</div>
			
		</div>
</div>

	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	
</c:if>
				<c:if test="${username == null}">
			<meta http-equiv="Refresh" content="0; http://192.168.43.197:8080/MicroKSiw2019_2/Home.html"/>
				</c:if>	
</body>
		<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script> 
		<script src="carrello_assets/js/bootstrap.min.js"></script>
		<script src="carrello_assets/js/customjs.js"></script>

</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
 <%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="persistance.DatabaseManager"%>
<%@page import="model.Canzone"%>
<%@page import="model.Artista"%>
<%@page import="persistence.dao.ArtistaDao"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@page session="true"%>
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
<script src="bootstrap-4.1.3/js/bootstrap.min.js"></script>
<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/searchbar.css" rel="stylesheet" type="text/css">
<link href="css/simple-sidebar.css" rel="stylesheet">
<link rel="stylesheet" href="fontawesome-free-5.3.1-web/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">


</head>
<body>

<!--<c:if test="${username != null}">-->
	<div class="row">
		<nav class="navbar navbar-light bg-light fixed-top">
			<a class="scritta navbar-brand">Navbar</a>
			<div class="container">
				<form class="form-inline m-auto">
					<input class="form-control mr-sm-2" type="search"
						placeholder="Search" aria-label="Search">
					<button class="btn btn-outline-success my-20 my-sm-10"
						type="submit">Search</button>
				</form>

				<!-- <form class="form-inline m-5"><label for="form1" class="active"></label><i class="fa fa-shopping-cart prefix white-text active"></i></form> -->
				<form class="form-inline m-5" action="">
					<button class="transparentButton">
						<i class="fa fa-shopping-cart prefix white-text active"></i>
					</button>
				</form>


				<form method="GET" action="Logout" >
					<div class="pull-left">
						<ul class="nav navbar-nav">
							<li><button type="submit" class="btn navbar-btn btn-danger"
									name="logout" id="logout" value="Log Out">Log Out</button></li>
						</ul>
					</div>
				</form>
			</div>
		</nav>
	</div>

<div style="height: 250px"></div>

	<div>
		<div class="col-sm-2">
			<ul class="sidebar-nav">
				<li class="sidebar-brand"><a href="#">Home</a></li>
				<li><a href="#">Profilo</a></li>
				<li><a href="#Libreria">Libreria</a></li>
			</ul>
		</div>
		<div class="col-sm-10">
				   <section id="Catalogo"style="padding-left: 300px ; padding-top:0px">
    <div class="container">
     <div class="row">
 
 <%List<Canzone> categories = DatabaseManager.getInstance().getDaoFactory().getCanzoneDao().findAll();
   ArtistaDao A=DatabaseManager.getInstance().getDaoFactory().getArtistaDAO();
    for (Canzone song : categories) {
     Artista a=A.findByName(song.getArtista().getNomeArtista());
     out.println("<div class=\"col-sm-3 text-center\">"+"<img class=\"copertina\" alt=\"\" src=\""+a.getPathImage()+"\"><p>" + song.getTitolo() 
     + " </p><h2>"+ song.getArtista().getNomeArtista() +"</h3>" +"<p>"+song.getGenere()+"</p>"+"<a href=\"addToCart?id=" + (song.getIdCanzone())
     + "&from=PaginaPrincipale.jsp\" >"+"<i class=\"fa fa-shopping-cart\"></i>Add to cart</a></div>");
      //if (request.getSession().getAttribute("username") != null && !request.getSession().getAttribute("username").equals("")) {
     /*out.print("<a href=\"addToCart?id=" + (song.getIdCanzone())+ "&from=PaginaPrincipale.jsp\" >");
     out.print("<i class=\"fa fa-shopping-cart\"></i>Add to cart</a>");*/
     /* } else {
      out.print("<a href=\"LoginPage.jsp\" class=\"btn btn-default add-to-cart\">");
      out.print("<i class=\"fa fa-shopping-cart\"></i>Login first</a>");
     }*/
    }%>
   </div>
  </div>
  <div id = "lettore">
  
<div class="song" style="background-color: #2d3542">
   <div class="parallax_background parallax-window"></div>
   <div class="container">
    <div class="row">
     <div class="col">
      <div class="song_content">

       <!-- Player -->
       <div class="single_player_container">
        <div
         class="single_player d-flex flex-row align-items-center justify-content-start">
         <div id="jplayer_1" class="jp-jplayer"></div>
         <div id="jp_container_1" class="jp-audio" role="application"
          aria-label="media player">
          <div
           class="jp-gui jp-interface d-flex flex-lg-row flex-column align-items-start justify-content-start">

           <!-- Player Controls -->
           <div
            class="player_controls_box d-flex flex-row align-items-start justify-content-start">
            <div class="order-lg-1 order-2">
             <div class="player_title">Canzone della settimana</div>
             <div
              class="jp-controls-holder player_controls ml-auto d-flex flex-row align-items-start justify-content-start">
              <button class="jp-play player_button" tabindex="0"></button>
              <button class="jp-stop player_button" tabindex="0"></button>
             </div>
            </div>
            <div class="song_image ml-lg-auto order-lg-2 order-1">
             <img src="images/song_1.jpg" alt="">
            </div>
           </div>

           <!-- Progress Bar -->
           <div
            class="player_bars d-flex flex-row align-items-start justify-content-start">
            <div class="player_progress_box">
             <div class="jp-current-time" role="timer" aria-label="time">00:00</div>
             <div class="song_info">
              <div class="jp-artist" aria-label="title">Michael
               Smith</div>
              <div class="jp-title" aria-label="title"></div>
             </div>
             <div class="jp-progress">
              <div class="jp-seek-bar">
               <div>
                <div class="jp-play-bar">
                 <span></span>
                </div>
               </div>
              </div>
             </div>
             <div class="jp-duration ml-auto" role="timer"
              aria-label="duration">02:33</div>
            </div>

            <!-- Volume Controls -->
            <div class="jp-volume-controls ml-lg-auto">
             <div class="mute_button">
              <button class="jp-mute" tabindex="0"></button>
             </div>
             <div
              class="d-flex flex-row align-items-center justify-content-start">
              <div class="jp-volume-bar">
               <div>
                <div class="jp-volume-bar-value"></div>
               </div>
              </div>
             </div>
            </div>
           </div>

          </div>
          <div class="jp-no-solution">
           <span>Update Required</span> To play the media you will need
           to either update your browser to a recent version or update
           your <a href="http://get.adobe.com/flashplayer/"
            target="_blank">Flash plugin</a>
          </div>
         </div>
        </div>
       </div>

      </div>
     </div>
    </div>
   </div>
  </div>
  

  
  </div>
  
 </section>
 
 <section id="Libreria" style="padding-left: 250px">
  <!--  <div class="featured">-->
   <div class="container">
    <div class="row">
     <div class="col">
      <div class="section_title text-center">
       <h1>TOP FIVE</h1>
      </div>
      <div class="featured_list">
       <div id="jplayer_2" class="jp-jplayer"></div>
       <div id="jp_container_2" class="jp-audio" role="application"
        aria-label="media player">
        <div class="jp-type-playlist">
         <div class="jp-playlist">
          <ul
           class="d-flex flex-row align-items-start justify-content-start flex-wrap">
           <li></li>
          </ul>
         </div>
         <div class="jp-no-solution">
          <span>Update Required</span> To play the media you will need
          to either update your browser to a recent version or update
          your <a href="http://get.adobe.com/flashplayer/"
           target="_blank">Flash plugin</a>
         </div>
        </div>
       </div>
      </div>
     </div>
    </div>
   </div>
  <!-- </div> -->
 </section>
 
 
 <!-- Bootstrap core JavaScript -->
 <script src="vendor/jquery/jquery.min.js"></script>
 <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
 <script src="vendor/jquery/jquery.min.js"></script>
 <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

 <script src="js/jquery-3.3.1.min.js"></script>
 <script src="styles/bootstrap-4.1.2/popper.js"></script>
 <script src="styles/bootstrap-4.1.2/bootstrap.min.js"></script>
 <script src="plugins/greensock/TweenMax.min.js"></script>
 <script src="plugins/greensock/TimelineMax.min.js"></script>
 <script src="plugins/scrollmagic/ScrollMagic.min.js"></script>
 <script src="plugins/greensock/animation.gsap.min.js"></script>
 <script src="plugins/greensock/ScrollToPlugin.min.js"></script>
 <script src="plugins/OwlCarousel2-2.3.4/owl.carousel.js"></script>
 <script src="plugins/jPlayer/jquery.jplayer.min.js"></script>
 <script src="plugins/jPlayer/jplayer.playlist.min.js"></script>
 <script src="plugins/easing/easing.js"></script>
 <script src="plugins/progressbar/progressbar.min.js"></script>
 <script src="plugins/parallax-js-master/parallax.min.js"></script>
 <script src="plugins/scrollTo/jquery.scrollTo.min.js"></script>
 <script src="js/custom.js"></script>


 
<!--
 <div style="background-color: #1b8458; ">


  <div class="song">

   <div class="container">
    <div class="row">
     <div class="col">
      <div class="song_content">

       -- Player --
       <div class="single_player_container">
        <div
         class="single_player d-flex flex-row align-items-center justify-content-start">
         <div id="jplayer_1" class="jp-jplayer"></div>
         <div id="jp_container_1" class="jp-audio" role="application"
          aria-label="media player">
          <div
           class="jp-gui jp-interface d-flex flex-lg-row flex-column align-items-start justify-content-start">

           Player Controls 
           <div
            class="player_controls_box d-flex flex-row align-items-start justify-content-start">
            <div class="order-lg-1 order-2">
             <div class="player_title">song of the week</div>
             <div
              class="jp-controls-holder player_controls ml-auto d-flex flex-row align-items-start justify-content-start">
              <button class="jp-play player_button" tabindex="0"></button>
              <button class="jp-stop player_button" tabindex="0"></button>
             </div>
            </div>
            <div class="song_image ml-lg-auto order-lg-2 order-1">
             <img src="images/song_1.jpg" alt="">
            </div>
           </div>

           -- Progress Bar --
           <div
            class="player_bars d-flex flex-row align-items-start justify-content-start">
            <div class="player_progress_box">
             <div class="jp-current-time" role="timer" aria-label="time">00:00</div>
             <div class="song_info">
              <div class="jp-artist" aria-label="title"></div>
              <div class="jp-title" aria-label="title"></div>
             </div>
             <div class="jp-progress">
              <div class="jp-seek-bar">
               <div>
                <div class="jp-play-bar">
                 <span></span>
                </div>
               </div>
              </div>
             </div>
             <div class="jp-duration ml-auto" role="timer"
              aria-label="duration">02:33</div>
            </div>

            < Volume Controls -
            <div class="jp-volume-controls ml-lg-auto">
             <div class="mute_button">
              <button class="jp-mute" tabindex="0"></button>
             </div>
             <div
              class="d-flex flex-row align-items-center justify-content-start">
              <div class="jp-volume-bar">
               <div>
                <div class="jp-volume-bar-value"></div>
               </div>
              </div>
             </div>
            </div>
           </div>

          </div>
          <div class="jp-no-solution">
           <span>Update Required</span> To play the media you will need
           to either update your browser to a recent version or update
           your <a href="http://get.adobe.com/flashplayer/"
            target="_blank">Flash plugin</a>
          </div>
         </div>
        </div>
       </div>

      </div>
     </div>
    </div>
   </div>
  </div>
 </div>
 -->
<!--</c:if>
    <c:if test="${username == null}">
   <meta http-equiv="Refresh" content="0; http://192.168.1.2:8080/MicroKSiw2019_2/Home.html"/>
    </c:if> -->
    
			
		</div>
	
	</div>

</body>
</html>
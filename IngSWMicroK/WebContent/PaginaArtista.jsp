<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
   <link  href="css/searchbar.css" rel="stylesheet" type="text/css">
<link href="css/simple-sidebar.css" rel="stylesheet">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Music template project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/bootstrap-4.1.2/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="plugins/video-js/video-js.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="styles/artist.css">
<link rel="stylesheet" type="text/css" href="styles/artist_responsive.css">
</head>
<body>
	<!-- inizio navbar -->
	<div class="row">
<nav class="navbar navbar-light bg-light fixed-top">
  <a class="scritta navbar-brand">MicroK</a>
	<div class="container">
		  
    <form action="search" method="post" class="form-inline m-auto">
    
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" name="search"  > 
			<button class="btn btn-outline-success my-20 my-sm-10" type="submit">Search</button>
    </form>
		<form>
			<div class="pull-left">
				<ul class="nav navbar-nav">
					<li><button type="submit" class="btn navbar-btn btn-danger" name="logout" id="logout"  value="Log Out">Log Out</button></li>
				</ul>
			</div>
		</form>
	</div>
</nav>
	</div>
	<!-- fine navbar -->

	
				<!-- /#sidebar-wrapper -->
		
				<!-- Page Content -->
	<div class="artist">
		<div class="container">
			<div class="row">
				
				<!-- Artist Image -->
				<div class="col-lg-6 artist_col order-lg-1 order-2">
					<div class="artist_image text-right">
						<img src="assets/Ligabue.png" alt="">
						
					</div>
				</div>

				<!-- Artist Info -->
				<div class="col-lg-6 order-lg-2 order-1">
					<div class="artist_info">
						<div class="artist_name"><h1>Luciano Ligabue</h1></div>
						<div class="artist_title">Genere:Rock</div>
						<div class="artist_info_list">
							<ul>
								<li>Nato: <span>13 marzo 1960 </span></li>
							
								<li>Primo album: <span>1990</span></li>
							</ul>
						</div>
						<div class="artist_info_text">
							<p>
								Ligabue
								Ligabue 2010-09-18 Torino 1.jpg
								Ligabue durante un concerto a Torino nel 2010
								Nazionalità	Italia Italia
								Genere	Rock alternativo[1]
								Pop rock[1]
								Pop[1]
								Periodo di attività musicale	1987 – in attività
								Strumento	voce, chitarra, bouzouki, tastiera, armonica, kazoo
								Album pubblicati	20
								Studio	11
								Live	5
								Colonne sonore	2
								Raccolte	2
								Modifica dati su Wikidata · Manuale
								Luciano Riccardo Ligabue, noto con il solo cognome Ligabue o con il soprannome Liga (Correggio, 13 marzo 1960), è un cantautore, musicista, regista, scrittore, sceneggiatore e produttore discografico italiano.
								
								È uno tra gli artisti italiani di maggior successo ed ha ricevuto due Targhe Tenco, un Premio Tenco, un Premio Le parole della musica e un Premio Lunezia per il valore musical-letterario dell'album "Miss Mondo". Con 165.264 persone a Campovolo, nel 2005, ha detenuto inoltre il record europeo di spettatori paganti per un concerto di un singolo artista, superato nel 2017 da Vasco Rossi.[2]
								
								Ha vinto negli oltre trenta anni di carriera più di sessanta premi per ciò che concerne la sua attività musicale, cinque premi per quanto riguarda l'attività di scrittore ed infine dodici onorificenze per la sua attività cinematografica.</p>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
<div>
<h2>Eventi</h2>
<img src="assets/TicketLigabue.jpg" alt="">
<button class="btn btn-outline-success my-20 my-sm-10" onclick="location.href='https://www.TrillBliz.it'" >INFO</button>


</div>
	

	<!-- /#wrapper -->

	<!-- Bootstrap core JavaScript -->
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
<script src="plugins/jPlayer/jquery.jplayer.min.js"></script>
<script src="plugins/jPlayer/jplayer.playlist.min.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/progressbar/progressbar.min.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="plugins/scrollTo/jquery.scrollTo.min.js"></script>
<script src="plugins/video-js/video.min.js"></script>
<script src="plugins/video-js/Youtube.min.js"></script>
<script src="js/artist.js"></script>
</body>
</html>
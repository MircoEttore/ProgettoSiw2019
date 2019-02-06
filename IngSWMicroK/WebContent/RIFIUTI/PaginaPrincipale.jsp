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
<link href="css/searchbar.css" rel="stylesheet" type="text/css">
<link href="css/simple-sidebar.css" rel="stylesheet">
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
<body>
	<!-- inizio navbar -->
	<div class="row">
		<nav class="navbar bg-light fixed-top">
			<a class="navbar-brand">Navbar</a>
			<div class="d-flex justify-content-center h-100">
				<div class="col-md-4">
					<img class="logo" alt="MicroK_logo" src="img/Icon.svg">
				</div>
			</div>
			<div class="container">
				<form class="form-inline m-auto">
					<input class="form-control mr-sm-2" type="search"
						placeholder="Search" aria-label="Search">
					<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
					<div class="form-inline">
						<a class="navbar-string  mr-sm-2" href="">Carrello</a> <a href="">Logout</a>
					</div>
				</form>
			</div>
		</nav>
	</div>
	<!-- fine navbar -->


	<div id="wrapper" class="toggled">
		<!-- Sidebar -->
		<div id="sidebar-wrapper">
			<ul class="sidebar-nav">
				<li class="sidebar-brand"><a href="#">Home</a></li>
				<li><a href="#">Profilo</a></li>
				<li><a href="#Libreria">Libreria</a></li>
			</ul>
		</div>
		<!-- /#sidebar-wrapper -->

		<!-- Page Content -->
		<div id="page-content-wrapper">
			<div class="container-fluid">
				<div id="carouselExampleControls" class="carousel slide"
					data-ride="carousel">
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img class="d-block w-100" src="img/header-bg.jpg"
								alt="First slide">
						</div>
						<div class="carousel-item">
							<img class="d-block w-100" src="img/map-image.png"
								alt="Second slide">
						</div>
						<div class="carousel-item">
							<img class="d-block w-100" src="img/headermainpage-bg.jpg"
								alt="Third slide">
						</div>
					</div>
					<a class="carousel-control-prev" href="#carouselExampleControls"
						role="button" data-slide="prev"> <span
						class="carousel-control-prev-icon" aria-hidden="true"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="carousel-control-next" href="#carouselExampleControls"
						role="button" data-slide="next"> <span
						class="carousel-control-next-icon" aria-hidden="true"></span> <span
						class="sr-only">Next</span>
					</a>
				</div>
			</div>


		</div>
		<div>
			<div class="featured">
				<div class="container">
					<div class="row">
						<div class="col">
							<div class="section_title text-center">
								<h1>
									<font style="vertical-align: inherit;"><font
										style="vertical-align: inherit;">Playlist in prima
											piano</font></font>
								</h1>
							</div>
							<div class="featured_list">
								<div id="jplayer_2" class="jp-jplayer"
									style="width: 0px; height: 0px;">
									<img id="jp_poster_1" style="width: 0px; height: 0px;"
										src="images/featured_1.jpg">
									<audio id="jp_audio_1" preload="metadata"
										src="assets/Maneskin - Moriro da re www.my-free-mp3.net .mp3"
										title="Giorni migliori"></audio>
								</div>
								<div id="jp_container_2" class="jp-audio" role="application"
									aria-label="media player">
									<div class="jp-type-playlist">
										<div class="jp-playlist">
											<ul
												class="d-flex flex-row align-items-start justify-content-start flex-wrap"
												style="">
												<li class="jp-playlist-current"><div>
														<a href="javascript:;" class="jp-playlist-item-remove"
															style="display: none;"><font
															style="vertical-align: inherit;"><font
																style="vertical-align: inherit;">×</font></font></a><a
															href="javascript:;"
															class="jp-playlist-item jp-playlist-current" tabindex="0"><font
															style="vertical-align: inherit;"><font
																style="vertical-align: inherit;">Better Days </font></font><span
															class="jp-artist"><font
																style="vertical-align: inherit;"><font
																	style="vertical-align: inherit;">di Bensound</font></font></span></a>
														<div class="featured_album">
															<font style="vertical-align: inherit;"><font
																style="vertical-align: inherit;">TOP5</font></font>
														</div>
														<div class="featured_title">
															<font style="vertical-align: inherit;"><font
																style="vertical-align: inherit;">Giorni migliori</font></font>
														</div>
													</div>
													<div class="featured_image">
														<img src="images/featured_1.jpg">
													</div>
													<div class="album_play_button"></div></li>
												<li><div>
														<a href="javascript:;" class="jp-playlist-item-remove"
															style="display: none;"><font
															style="vertical-align: inherit;"><font
																style="vertical-align: inherit;">×</font></font></a><a
															href="javascript:;" class="jp-playlist-item" tabindex="0"><font
															style="vertical-align: inherit;"><font
																style="vertical-align: inherit;">Dubstep </font></font><span
															class="jp-artist"><font
																style="vertical-align: inherit;"><font
																	style="vertical-align: inherit;">di Bensound</font></font></span></a>
														<div class="featured_album">
															<font style="vertical-align: inherit;"><font
																style="vertical-align: inherit;">DJ Mind</font></font>
														</div>
														<div class="featured_title">
															<font style="vertical-align: inherit;"><font
																style="vertical-align: inherit;">dubstep</font></font>
														</div>
													</div>
													<div class="featured_image">
														<img src="images/featured_2.jpg">
													</div>
													<div class="album_play_button"></div></li>
												<li><div>
														<a href="javascript:;" class="jp-playlist-item-remove"
															style="display: none;"><font
															style="vertical-align: inherit;"><font
																style="vertical-align: inherit;">×</font></font></a><a
															href="javascript:;" class="jp-playlist-item" tabindex="0"><font
															style="vertical-align: inherit;"><font
																style="vertical-align: inherit;">Sunny </font></font><span
															class="jp-artist"><font
																style="vertical-align: inherit;"><font
																	style="vertical-align: inherit;">di Bensound</font></font></span></a>
														<div class="featured_album">
															<font style="vertical-align: inherit;"><font
																style="vertical-align: inherit;">Dublino Dub</font></font>
														</div>
														<div class="featured_title">
															<font style="vertical-align: inherit;"><font
																style="vertical-align: inherit;">soleggiato</font></font>
														</div>
													</div>
													<div class="featured_image">
														<img src="images/featured_3.jpg">
													</div>
													<div class="album_play_button"></div></li>
												<li><div>
														<a href="javascript:;" class="jp-playlist-item-remove"
															style="display: none;"><font
															style="vertical-align: inherit;"><font
																style="vertical-align: inherit;">×</font></font></a><a
															href="javascript:;" class="jp-playlist-item" tabindex="0"><font
															style="vertical-align: inherit;"><font
																style="vertical-align: inherit;">Better Days </font></font><span
															class="jp-artist"><font
																style="vertical-align: inherit;"><font
																	style="vertical-align: inherit;">di Bensound</font></font></span></a>
														<div class="featured_album">
															<font style="vertical-align: inherit;"><font
																style="vertical-align: inherit;">Vibes
																	dell'oceano</font></font>
														</div>
														<div class="featured_title">
															<font style="vertical-align: inherit;"><font
																style="vertical-align: inherit;">Giorni migliori</font></font>
														</div>
													</div>
													<div class="featured_image">
														<img src="images/featured_4.jpg">
													</div>
													<div class="album_play_button"></div></li>
												<li><div>
														<a href="javascript:;" class="jp-playlist-item-remove"
															style="display: none;"><font
															style="vertical-align: inherit;"><font
																style="vertical-align: inherit;">×</font></font></a><a
															href="javascript:;" class="jp-playlist-item" tabindex="0"><font
															style="vertical-align: inherit;"><font
																style="vertical-align: inherit;">Dubstep </font></font><span
															class="jp-artist"><font
																style="vertical-align: inherit;"><font
																	style="vertical-align: inherit;">di Bensound</font></font></span></a>
														<div class="featured_album">
															<font style="vertical-align: inherit;"><font
																style="vertical-align: inherit;">DJ Mind</font></font>
														</div>
														<div class="featured_title">
															<font style="vertical-align: inherit;"><font
																style="vertical-align: inherit;">dubstep</font></font>
														</div>
													</div>
													<div class="featured_image">
														<img src="images/featured_5.jpg">
													</div>
													<div class="album_play_button"></div></li>
												<li><div>
														<a href="javascript:;" class="jp-playlist-item-remove"
															style="display: none;"><font
															style="vertical-align: inherit;"><font
																style="vertical-align: inherit;">×</font></font></a><a
															href="javascript:;" class="jp-playlist-item" tabindex="0"><font
															style="vertical-align: inherit;"><font
																style="vertical-align: inherit;">Sunny </font></font><span
															class="jp-artist"><font
																style="vertical-align: inherit;"><font
																	style="vertical-align: inherit;">di Bensound</font></font></span></a>
														<div class="featured_album">
															<font style="vertical-align: inherit;"><font
																style="vertical-align: inherit;">Dublino Dub</font></font>
														</div>
														<div class="featured_title">
															<font style="vertical-align: inherit;"><font
																style="vertical-align: inherit;">soleggiato</font></font>
														</div>
													</div>
													<div class="featured_image">
														<img src="images/featured_6.jpg">
													</div>
													<div class="album_play_button"></div></li>
											</ul>
										</div>
										<div class="jp-no-solution" style="display: none;">
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
	<script src="plugins/OwlCarousel2-2.3.4/owl.carousel.js"></script>
	<script src="plugins/jPlayer/jquery.jplayer.min.js"></script>
	<script src="plugins/jPlayer/jplayer.playlist.min.js"></script>
	<script src="plugins/easing/easing.js"></script>
	<script src="plugins/progressbar/progressbar.min.js"></script>
	<script src="plugins/parallax-js-master/parallax.min.js"></script>
	<script src="plugins/scrollTo/jquery.scrollTo.min.js"></script>
	<script src="js/custom.js"></script>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">


<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="css/searchbar.css" rel="stylesheet" type="text/css">
<link href="css/simple-sidebar.css" rel="stylesheet">
<link href="css/searchbar.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="styles/bootstrap-4.1.2/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css"rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.3.4/owl.carousel.css">
<link rel="stylesheet" type="text/css"href="plugins/OwlCarousel2-2.3.4/owl.theme.default.css">
<link rel="stylesheet" type="text/css"href="plugins/OwlCarousel2-2.3.4/animate.css">
<link rel="stylesheet" type="text/css" href="styles/main_styles.css">
<link rel="stylesheet" type="text/css" href="styles/responsive.css">


<title>Insert title here</title>
</head>




<body>
 <div class="row">
  <nav class="navbar navbar-light bg-light fixed-top">
   <a class="scritta navbar-brand" style="color:#387044" >MicroK</a>
   <div class="container">
    
    <form action="search" method="post" class="form-inline m-auto">
    
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" name="search"  > 
			<button class="btn btn-outline-success my-20 my-sm-10" type="submit">Search</button>
    </form>
    <form class="form-inline m-5" action="">
					<button class="transparentButton" onclick="location.href='carrello.jsp'">
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
 
 <div style="height:150px"></div>

	<div class="row">
		<div class="col-sm-2" style="background-color:#2d3542 ">
			<ul class="sidebar-nav">
		        <li class="sidebar-brand"><a href="#">Home</a></li>
		        <li><a href="#">Profilo</a></li>
		        <li><a href="#Catalogo">Catalogo Musicale</a></li>
		        <li><a href="#Libreria">Libreria</a></li>
		        <li><a href="formInserimentoEvento.jsp">Aggiungi Evento</a></li>
		        <li><a href="">Aggiungi Canzone</a></li>
			</ul>
		</div>
		
		<div class="col-sm-10">
			<div style="text-align: canter">
				<div class="md-form"><label for="form1" class="active">Il tuo Nome</label> <i class="fa fa-user prefix white-text active"></i> <input type="text" id="nome" name="nome" class="white-text form-control" required></div>
				<div class="md-form"><label for="form2" class="active">Il tuo Cognome</label> <i class="fa fa-user prefix white-text active"></i> <input type="text" id="cognome" name="cognome" class="white-text form-control" required></div>
				<div class="md-form"><label for="form5">Nickname</label> <i class="fa fa-lock prefix white-text active"></i> <input type="text" id="nickname" name="nickname" class="white-text form-control" required></div>
				<div class="md-form"><label for="form3" class="active">La tua email</label> <i class="fa fa-envelope prefix white-text active"></i> <input type="text" id="email" name="email" class="white-text form-control" required></div>
				<div class="md-form"><label for="form4">La tua password</label> <i class="fa fa-lock prefix white-text active"></i> <input type="password" id="password" name="password" class="white-text form-control" required></div>
				<div class="md-form"><label for="form4">Conferma la tua password</label> <i class="fa fa-lock prefix white-text active"></i> <input type="password" id="conferma" name="conferma" class="white-text form-control" required>	</div>
				<div class="md-form"><label for="form5">Indirizzo</label> <i class="fa fa-lock prefix white-text active"></i> <input type="text" id="indirizzo" name="indirizzo" class="white-text form-control" required ></div>
				<div class="text-center mt-4"><button class="btn btn-block btn-primary" id="signup_btn">Aggiorna Informazioni</button><hr class="hr-light mb-3 mt-4"></div>
			</div>
		</div>
	</div>
 
 
 
</body>
</html>
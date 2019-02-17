<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form method="POST"  action="aggiungiArtista">
  <div class="form-group">
  
	    <div>
	       <label>Nome Artista</label>
		  	  <input name="artista" >
	  	</div>
	  	

         <div>
       		<label>Genere</label>
  				<input name="Genere" >
  	    </div>
  	
  	      <div>
   			 <label >Biografia</label>
  		 		 <input class="form-control" name="nome">
  	      </div>
  	      
  	      <div>
  	     	 <label>pathImage</label>
  				<input name="link" >
  		  </div>
  		
  		  </div>
  <button type="submit" class="btn btn-default">Conferma</button>
</form>
</body>
</html>
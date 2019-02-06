<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form method="POST"  action="aggiungiEvento">
  <div class="form-group">
    <label>Artista</label>
  	  <input name="artista" >
    <label >Data</label>
    	<input  class="form-control" name="data">
    <label >Luogo</label>
  	  <input class="form-control" name="luogo">
    <label >Nome Evento</label>
  	  <input class="form-control" name="nome">
    <label >Prezzo</label>
   		<input class="form-control" name="prezzo">
   	<label>Collegamento Ipertestuale</label>
  		<input name="link" >
  </div>
  <button type="submit" class="btn btn-default">Conferma</button>
</form>
</body>
</html>
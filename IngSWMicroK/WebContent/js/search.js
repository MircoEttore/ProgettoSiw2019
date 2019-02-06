/**
 * 
 */



function mostraScuola(canzone){
	var stud = {
			idCanzone : studente.idCanzone,
			nome: studente.nome
		
		};
	$.ajax({
		type: "POST",
		url: "dettagliScuola",
		datatype: "json",
		data: JSON.stringify(stud),
		success: function (data){
			var scuola = JSON.parse(data);
			$("#dettagliScuola").text(scuola.nome);
		}
	});
}






var asyncRequest;    
function start(){
    try
    {
        asyncRequest = new XMLHttpRequest();
        asyncRequest.addEventListener("readystatechange", stateChange, false);
        asyncRequest.open('POST', 'search', true);    //   /Test is url to Servlet!
        asyncRequest.send(null);
    }
    catch(exception)
   {
    alert("Request failed");
   }
}

function stateChange(){
if(asyncRequest.readyState == 4 && asyncRequest.status == 200)
    {
    var text = document.getElementById("text");         //  text is an id of a 
    text.innerHTML = asyncRequest.responseText;         //  div in HTML document
    }
}

window.addEventListener("load", start(), false);
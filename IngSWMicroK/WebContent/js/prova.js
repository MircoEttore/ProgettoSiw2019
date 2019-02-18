
		$(document).ready(function(){
			$.ajax({
				type:'GET',
				url:'prodotti?action=demo2',
						headers :{
							Accept:"application/json charset=utf-8",
							"Content-Type":"application/json; charset=utf-8"
							},
							success:function(result){
								var listproducts=$.parseJSON(result);
								var s='';
								for (var i=0;i<listproducts.length;i++){
									//s+='id:'+listproducts[i].idCanzone+'<br>Name:'+listproducts[i].titolo+'<br>Name:'+listproducts[i].Album+'<br>:::::::::::::::::::::::::::::::::<br>';
									s+='<div class="col-sm-3 text-center">'+'<img class="copertina" alt="" src="'+listproducts[i].url+'"><p>' +
											+ listproducts[i].titolo +'</p><h2>'+ listproducts[i].artista.nomeArtista +'</h3><p>'+listproducts[i].genere+'</p>'+'<a href="addToCart?id="' + 
									listproducts[i].idCanzone+'&from=paginaPrincipale.jsp><i class="fa fa-shopping-cart"></i>Add to cart</a></div>';
								}
								document.getElementById('result2').innerHTML=s;
							}
			});
			
			$('#button1').click(function(){
				$.ajax({
					type:'GET',
					url:'prodotti?action=demo1',
							headers :{
								Accept:"application/json charset=utf-8",
								"Content-Type":"application/json; charset=utf-8"
								},
								success:function(result){
									
									var product=$.parseJSON(result);t.nomeArtista+'<br>Name:'+product.pathImage+'<br>Name:'+product.idArtista;
								}
				});
									document.getElementById('result1').innerHTML='id:'+produc
				
			});
			$('#button2').click(function(){
			
				$.ajax({
					type:'GET',
					url:'prodotti?action=demo2',
							headers :{
								Accept:"application/json charset=utf-8",
								"Content-Type":"application/json; charset=utf-8"
								},
								success:function(result){
									var listproducts=$.parseJSON(result);
									var s='';
									for (var i=0;i<listproducts.length;i++){
										//s+='id:'+listproducts[i].idCanzone+'<br>Name:'+listproducts[i].titolo+'<br>Name:'+listproducts[i].Album+'<br>:::::::::::::::::::::::::::::::::<br>';
										s+='<div class="col-sm-3 text-center">'+'<img class="copertina" alt="" src="'+listproducts[i].url+'"><p>' +
												+ listproducts[i].titolo +'</p><h2>'+ listproducts[i].artista.nomeArtista +'</h3><p>'+listproducts[i].genere+'</p>'+'<a href="addToCart?id="' + 
										listproducts[i].idCanzone+'&from=paginaPrincipale.jsp><i class="fa fa-shopping-cart"></i>Add to cart</a></div>';
									}
									document.getElementById('result2').innerHTML=s;
								}
				});
				
			});
		});
		
	/*	 List<Canzone> categories = DatabaseManager.getInstance().getDaoFactory().getCanzoneDao().findAll();
		 ArtistaDao A=DatabaseManager.getInstance().getDaoFactory().getArtistaDAO();
			    for (Canzone song : categories) {
				     Artista a=A.findByName(song.getArtista().getNomeArtista());
				     out.println("<div class=\"col-sm-3 text-center\">"+"<img class=\"copertina\" alt=\"\" src=\""+a.getPathImage()+"\"><p>" + song.getTitolo() 
				     + " </p><h2>"+ song.getArtista().getNomeArtista() +"</h3>" +"<p>"+song.getGenere()+"</p>"+"<a href=\"addToCart?id=" + (song.getIdCanzone())
				     + "&from=PaginaPrincipale.jsp\" >"+"<i class=\"fa fa-shopping-cart\"></i>Add to cart</a></div>");
			       }*/
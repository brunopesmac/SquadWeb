<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>	
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <!-- Meta tags necessárias para o Bootstrap -->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css/style_cadastro.css">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <title>ProjectC</title>
        
        <style>
        	h {
        		color: #FF0000;
        	}
        	label {
        		color: #373f85;
        	}
        	h4 {
        		color: #FFFFFF;
        	}
        </style>
    </head>
    
    <body>
    	<pre></pre>
    	<pre></pre>
        <div id="main" class="container">
            <h1 class="page-header"style="text-align:center">ProjetoC</h1>
        </div>
        <pre></pre>
        <form action="controller.do" method="post">
        	<div class="row">
        		<div class="col-md-12 mx-auto">
        			<h3 style="text-align:center">Seu Pedido Chegou!</h3>
        		</div>
        	</div>
        	<pre></pre>
        	<pre></pre>
        	<div class="row">
        		<div class="col-md-12 mx-auto">
        			<h4 style="text-align:center">Libere o carrinho para pegar os seus itens</h4>
        		</div>
        	</div>
        	<pre></pre>
        	<div class="row">
        		<div class="col-md-12 mx-auto">
        			<img srcset = "imagens/check.png 1100w"
     	      			  sizes = "(max-width: 320px) 75px,
                        	       (max-width: 470px) 150px,
                            	   (max-width: 600px) 200px,
                            	   300px "
     			      	    src = "imagens/QRCode.png"
                     	  class = "mx-auto d-block">
                </div>
        	</div>
        	<br/>
        	<div class="row">
        		
        		<div class="col-md-12 mx-auto" style="text-align: center">
        			<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#liberar" id="btn-liberar">Liberar carrinho</button>
                </div>
        	</div>
        	
        </form>
        
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        
        <div class="footer">
         	<!-- Rodape -->
			<c:import url="rodape.jsp"/>
   		</div>
   		
	<!-- The Modal -->
	<div class="modal" id="liberar">
		<div class="modal-dialog">
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title" style="color: black;">Liberar carrinho</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<!-- Modal body -->
				<div class="modal-body">
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value="" 
							id="defaultCheck1"> <label class="form-check-label"
							for="defaultCheck1" style="color: black;"> Item solicitado chegou em perfeitas condições! </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value=""
							id="defaultCheck1"> <label class="form-check-label"
							for="defaultCheck1" style="color: black;"> Item solicitado chegou bem porém atrasado </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value=""
							id="defaultCheck1"> <label class="form-check-label"
							for="defaultCheck1" style="color: black;"> Item chegou danificado </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value=""
							id="defaultCheck1"> <label class="form-check-label"
							for="defaultCheck1" style="color: black;"> Item entregue diferente do solicitado </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value=""
							id="defaultCheck1"> <label class="form-check-label"
							for="defaultCheck1" style="color: black;"> O carrinho não chegou! </label>
					</div>
				</div>

				<!-- Modal footer -->
				<div class="modal-footer">
					<a href="TelaInicial.jsp" class="btn btn-success">Enviar feedback</a>
					<button type="button" class="btn btn-outline-danger"
						data-dismiss="modal">Cancelar</button>
				</div>
			</div>
		</div>
	</div>
	
</body>
<script>
	$(document).ready(function() {
		$('#btn-liberar').click(function() {
			$('#liberar').modal('show');
		});
	});
	
</script>
</html>
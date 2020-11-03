<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
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
        	h2 {
        		color: #FF0000;
        	}
        	label {
        		color: #373f85;
        	}
        </style>
    </head>
    
    <body>
    	<pre></pre>
    	<pre></pre>
        <div id="main" class="container">
            <h1 class="page-header"style="text-align:center">ProjetoC</h1>
            <h2 class="page-header"style="text-align:center">Pedido Recusado!</h2>
        </div>
        <pre></pre>
        <form action="controller.do" method="post">
            <div class="form-group">
  				<label for="motivoPedidoRecusado"></label>
  				<textarea class="form-control"style="border-radius:20px; height:300px" aria-label="With textarea">Seu pedido foi recusado pois:</textarea>
			</div>
            <div id="actions" class="row">
				<div class="col-md-6 mx-auto" style="text-align: center">
					<button type="submit" class="btn btn-primary btn-lg btn-block rounded-pill" name="command" value="NovoPedido">Novo Pedido</button>
				</div>
				<div class="col-md-6 mx-auto" style="text-align: center">
					<a href="index.jsp" class="btn btn-danger btn-lg btn-block rounded-pill">Finalizar</a>
				</div>
			</div>
        </form>
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        
        <div class="footer">
         	<!-- Rodape -->
			<c:import url="rodape.jsp"/>
   		</div>
    </body>
</html>
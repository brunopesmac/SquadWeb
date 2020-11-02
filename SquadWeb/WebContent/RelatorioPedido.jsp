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
        	label, h2 {
        		color: #373f85;
        	}
        </style>
    </head>
    
    <body>
    	<pre></pre>
    	<pre></pre>
        <div id="main" class="container">
            <h1 class="page-header"style="text-align:center">ProjetoC</h1>
            <h2 class="page-header"style="text-align:center">Relatório do Pedido</h2>
        </div>
        <pre></pre>
        <form action="controller.do" method="post">
            <div class="form-group">
  				<label for="relatorioPedido">Confira abaixo as informações do seu pedido:</label>
  				<textarea class="form-control rounded-0" id="relatorioPedido" rows="10"></textarea>
			</div>
            <div id="actions" class="row">
				<div class="col-md-6 mx-auto" style="text-align: center">
					<a href="telaInicialUsuario.jsp" class="btn btn-primary btn-lg btn-block rounded-pill">Ok</a>
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
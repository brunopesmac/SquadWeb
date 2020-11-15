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
            <h2 class="page-header"style="text-align:center">Enviar Pedido</h2>
        </div>
        <pre></pre>
        <form action="controller.do" method="post">
        	<div class="dropdown">
        		<div class="input-group-prepend">
          			<div class="input-group-text">De</div>
	           		<select class="form-control" id="localOrigem" name="localOrigem">
	           			<option>Selecione o local de partida</option>
	           			<option>Biblioteca</option>
	               		<option>Almoxarifado</option>
	           		</select>
	            </div>               
            </div>
            <pre></pre>
            <div class="dropdown">
        		<div class="input-group-prepend">
          			<div class="input-group-text">Para</div>
	           		<select class="form-control" id="localDestino" name="localDestino">
	           			<option>Selecione o local de destino</option>
	           			<option>Sala 504</option>
	               		<option>Sala 202</option>
	           		</select>
	            </div>               
            </div>
            <div class="form-group">
  				<label for="relatorioPedido"></label>
  				<textarea class="form-control"style="border-radius:20px; height:300px" aria-label="With textarea" placeholder='Descreva seu pedido...'></textarea>
			</div>
            <div id="actions" class="row">
				<div class="col-md-6 mx-auto" style="text-align: center">
					<button type="submit" class="btn btn-primary btn-lg btn-block rounded-pill" name="command" value="EnviarPedido">Enviar Pedido</buttom>
				</div>
				<div class="col-md-6 mx-auto" style="text-align: center">
					<a href="SolicitarPedido.jsp" class="btn btn-secondary btn-lg btn-block rounded-pill">Cancelar</a>
				</div>
			</div>
			<pre></pre>
        </form>
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        
        <div class="footer">
         	<!-- Rodape -->
			<c:import url="rodape.jsp"/>
   		</div>
    </body>
</html>
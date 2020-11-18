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
        	h {
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
        </div>
        <pre></pre>
        <pre></pre>
        <form action="controller.do" method="post">
        	<div class="row">
        		<div class="col-md-12 mx-auto">
        			<h3>Trajeto <img src="imagens/loading.gif" alt=""  width="20" alt="imagens/loading.gif"/></h3>
        		</div>
        	</div>
        	<div class="row">
        		<div class="col-md-12 mx-auto">
        			<div class="form-group">
  						<label for="LocalPontoInicial"></label>
  						<textarea class="form-control"style="border-radius:20px; height:150px" aria-label="With textarea" disabled>Checkpoint 1&#13;&#10;Checkpoint 2&#13;&#10;Checkpoint 3 ${viagem.checkpoint1 }</textarea>
					</div>
				</div>
			</div>
			<pre></pre>
			<pre></pre>
			<div class="row">
        		<div class="col-md-12 mx-auto">
        			<h3>Voltando ao Ponto Inicial <img src="imagens/loading.gif" alt=""  width="20" alt="imagens/loading.gif"/></h3>	
        		</div>
        	</div>
        	<div class="row">
        		<div class="col-md-12 mx-auto">
        			<div class="form-group">
  						<label for="LocalPontoInicial"></label>
  						<textarea class="form-control"style="border-radius:20px; height:80px" aria-label="With textarea" disabled>De: ${rememente.nome } #${remetente.id }&#13;&#10;Local: ${local.nome } #${local.id }</textarea>
					</div>
				</div>
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
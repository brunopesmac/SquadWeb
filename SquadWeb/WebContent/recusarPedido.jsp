<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <!-- Meta tags necessÃ¡rias para o Bootstrap -->
        <meta name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css/style_cadastro.css">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">

       	 <title>Recusar Pedido</title>
       	 
       	 <style>
        	label {
        		color: #373f85;
        	}
        </style>
    </head>
    <body>
    	<pre></pre>
    	<pre></pre>
		<!-- Inicio do container principal -->
        <div id="main" class="container">
            <h1 class="page-header" style="text-align:center">ProjetoC</h1>
            <pre></pre>
            <form action="../controller.do" method="GET">
                <div class="row">
        			<div class="form-group col-md-12 mx-auto">
        				<h3>Recusar Pedido</h3>
        			</div>
        		</div>
                <div class="input">
  					<textarea class="form-control"style="border-radius:20px; height:300px" aria-label="With textarea">Descreva o motivo da recusa...</textarea>
				</div>
                <pre></pre>
                <div id="actions" class="row "style="text-align:center">
					<div class="col-md-6 mx-auto" style="text-align: center">
						<button type="submit" class="btn btn-primary primary btn-lg btn-block rounded-pill" name="command" value="RecusarPedido">Enviar</button>
					</div>
                	<div class="col-md-6 mx-auto" style="text-align: center">
						<a href="telaInicialUsuario.jsp" class="btn btn-secondary btn-lg btn-block rounded-pill">Voltar</a>
					</div>
				</div>
            </form>
            <pre></pre>
        </div>

		<script type="text/javascript" src="<%= request.getContextPath() %>/js/inputText.js"></script>
		
		<script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        
        <div class="footer">
         	<!-- Rodape -->
			<c:import url="rodape.jsp"/>
   		</div>
	</body>
</html>
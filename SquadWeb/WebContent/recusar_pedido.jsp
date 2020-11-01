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
        <link rel="stylesheet" href="css/style_tela.css">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">

       	 <title>Recusar Pedido</title>
    </head>
    <body>
		<!-- Inicio do container principal -->
        <div id="main" class="container">
            <h2 class="page-header" style="text-align:center;">ProjetoC</h2>
            <hr>
            <form action="../controller.do" method="GET">
                <div class="input"style="text-align:center;">
  				
  					  <h3  style="text-align:center;">Motivo da recusa</h3>
  			
  				<textarea class="form-control"style="text-align:center;border-radius:20px; height:300px" aria-label="With textarea"></textarea>
				</div>
              
               		<br>
                	<div id="actions" class="row "style="text-align:center;">
						<button type="submit" class="btn btn-primary primary btn-lg btn-block rounded-pill" name="command" value="RecusarPedido">Enviar</button>
					</div>
                
                	<div id="actions" style="text-align:center;">
						<a href="" class="btn btn-default custom">Voltar</a>
					</div>
            </form>
              <hr>
        </div>

		<script type="text/javascript" src="<%= request.getContextPath() %>/js/inputText.js"></script>
	</body>
</html>
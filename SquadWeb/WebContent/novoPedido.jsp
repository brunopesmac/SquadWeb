<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<!-- Meta tags necessárias para o Bootstrap -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style_cadastro.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<title>ProjectC</title>

</head>
<body>
	<pre></pre>
	<pre></pre>
	<div id="main" class="container">
		<h1 class="page-header" style="text-align: center">ProjetoC</h1>
	</div>
	<pre></pre>
	<div class="container">
		<div class="row" style="margin-top: 75px">
			<div style="display: flex; justify-content: center;"
				class="form-group col-md-6 mx-auto">
				<h3 class="center" style="font-size: 3em">Novo Pedido!</h3>
			</div>
		</div>
		<div class="row" style="margin-top: 50px">
			<div style="display: flex; justify-content: center;"
				class="form-group col-md-6 mx-auto">
				<h3 class="center" style="font-size: 2.3em; color: #ffffff;">Identifique-se</h3>
			</div>
		</div>
		<pre></pre>
		<pre></pre>
		<div id="actions" class="row">
			<div class="col-4 col-md-4 col-lg-4 col-sm-4 mx-auto"
				style="text-align: center">
				<a href="qrCode.jsp" class=""> <img class="img-fluid"
					style="height: auto; width: 50%;" src="imagens/scan-me.png"
					alt="QR CODE">
				</a>
			</div>
			<div class="col-4 col-md-4 col-lg-4 col-sm-4 mx-auto"
				style="text-align: center">
				<p>OU</p>
			</div>
			<div class="col-4 col-md-4 col-lg-4 col-sm-4 mx-auto"
				style="text-align: center">
				<a href="idDigital.jsp" class=""> <img class="img-fluid"
					style="height: auto; width: 50%;" src="imagens/digital-id.png"
					alt="ID Digital">
				</a>
			</div>
		</div>
		<pre></pre>
		<pre></pre>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>

	<div class="footer">
		<!-- Rodape -->
		<c:import url="rodape.jsp" />
	</div>
</body>
</html>
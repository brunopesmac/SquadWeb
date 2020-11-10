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
	<form action="controller.do" method="post">
		<div class="row">
			<div class="form-group col-md-12 mx-auto">
				<h3>Adicionar Locais</h3>
			</div>
		</div>
		<div class="row">
			<div class="form-group col-md-12 mx-auto">
				<input type="text" class="form-control rounded" id="id"
					name="id" placeholder="ID">
			</div>
		</div>
		<div class="row">
			<div class="form-group col-md-12 mx-auto">
				<input type="text" class="form-control rounded" id="nome"
					name="nome" placeholder="Nome">
			</div>
		</div>
		<div class="row">
			<div class="form-group col-md-12 mx-auto">
				<input type="text" class="form-control rounded" id="latitude" 
				name="latitude" placeholder="Latitude">
			</div>
		</div>
		<div class="row">
			<div class="form-group col-md-12 mx-auto">
				<input type="text" class="form-control rounded" id="longitude"
					name="longitude" placeholder="Longitude">
			</div>
		</div>
		<pre></pre>
		<pre></pre>
		<div id="actions" class="row">
			<div class="col-md-6 mx-auto" style="text-align: center">
				<button type="submit"
					class="btn btn-primary btn-lg btn-block rounded-pill"
					name="command" value="AdicionarLocal" style="margin-bottom: 20px;">Adicionar</button>
			</div>
			<div class="col-md-6 mx-auto" style="text-align: center">
				<a href="addLocais.jsp"
					class="btn btn-secondary btn-lg btn-block rounded-pill">Cancelar</a>
			</div>
		</div>
		<pre></pre>
		<pre></pre>
	</form>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>

	<div class="footer">
		<!-- Rodape -->
		<c:import url="rodape.jsp" />
	</div>
</body>
</html>
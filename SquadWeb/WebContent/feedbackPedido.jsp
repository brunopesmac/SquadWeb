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
		<div class="row">
			<div style="display: flex; justify-content: center;" class="form-group col-md-6 mx-auto">
				<h3 class="center">Feedback do Pedido</h3>
			</div>
		</div>
		<div class="column">
			<div style="display: flex;"
				class="form-group col-md-6 col-lg-6 col-sm-6 mx-auto">
				<input style="width: 25%" type="checkbox"
					class="form-control rounded" id="feedback1" name="feedback1"
					disabled> <label for="feedback1"
					class="form-control rounded" id="feedback1"> Feedback 1</label>
			</div>
		</div>
		<div class="column">
			<div style="display: flex;"
				class="form-group col-md-6 col-lg-6 col-sm-6 mx-auto">
				<input style="width: 25%" type="checkbox"
					class="form-control rounded" id="feedback2" name="feedback2"
					disabled> <label for="feedback2"
					class="form-control rounded" id="feedback2"> Feedback 2</label>
			</div>
		</div>
		<div class="column">
			<div style="display: flex;"
				class="form-group col-md-6 col-lg-6 col-sm-6 mx-auto">
				<input style="width: 25%" type="checkbox"
					class="form-control rounded" id="feedback3" name="feedback3"
					disabled> <label for="feedback3"
					class="form-control rounded" id="feedback3"> Feedback 3</label>
			</div>
		</div>
		<div class="column">
			<div style="display: flex;"
				class="form-group col-md-6 col-lg-6 col-sm-6 mx-auto">
				<input style="width: 25%" type="checkbox"
					class="form-control rounded" id="feedback4" name="feedback4"
					disabled> <label for="feedback4"
					class="form-control rounded" id="feedback4"> Feedback 4</label>
			</div>
		</div>
		<div class="column">
			<div style="display: flex;"
				class="form-group col-md-6 col-lg-6 col-sm-6 mx-auto">
				<input style="width: 25%" type="checkbox"
					class="form-control rounded" id="feedback5" name="feedback5"
					disabled> <label for="feedback5"
					class="form-control rounded" id="feedback5"> Feedback 5</label>
			</div>
		</div>
		<pre></pre>
		<pre></pre>
		<div id="actions" class="row">
			<div
				style="display: flex; justify-content: center; align-items: center;"
				class="col-md-12 mx-auto" style="text-align: center">
				<a style="width: 25%" href="dashboard.jsp"
					class="btn btn-primary btn-lg btn-block rounded-pill">Ok</a>
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
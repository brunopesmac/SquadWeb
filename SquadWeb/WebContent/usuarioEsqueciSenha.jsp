<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <!-- Meta tags necessárias para o Bootstrap -->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css/style_login.css">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <title>ProjectC</title>
        
    </head>
    <body>
        <div id="main" class="container">
            <img srcset="imagens/logosj.png 320w,
             imagens/logosj.png 480w,
             imagens/logosj.png 800w"
     	sizes="(max-width: 320px) 280px,
            (max-width: 480px) 440px,
            800px "
     			src="imagens/logosj.png"
            class="mx-auto d-block">
            <pre></pre>
            <h1 class="page-header"style="text-align:center;" >ProjetoC - Recuperar Senha</h1>
        </div>
        <pre></pre>	
        <pre></pre>	
        <pre></pre>
        <form action="controller.do" method="post">
        	<div class="row">
                <div class="form-group col-md-12 mx-auto">
                    <label for="usuario">Usuário:</label>
                    <input type="text" class="form-control rounded" id="usuario" name="usuario" placeholder="Digite seu usuário">
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-12 mx-auto">
                    <label for="fone">Telefone:</label>
                    <input type="text" class="form-control rounded" id="fone" name="fone" placeholder="Digite o telefone cadastrado">
                </div>
            </div>
            <pre></pre>
           	<pre></pre>
            <div id="actions" class="row">
				<div class="col-md-8 mx-auto" style="text-align: center">
					<button type="submit" class="btn btn-primary btn-lg btn-block rounded-pill" name="command" value="RecuperarSenha">Recuperar</button>
				</div>
			</div>
			<div id="actions" class="row">
				<div class="col-md-12 mx-auto" style="text-align: center">
				<a href="index.jsp" class="btn btn-default custom"><u>Já recuperou seus dados? Clique aqui</u></a>
				</div>
			</div>
        </form>
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
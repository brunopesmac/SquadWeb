<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <!-- Meta tags necessárias para o Bootstrap -->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css/style_tela.css">
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
            <h1 class="page-header"style="text-align:center;" >ProjetoC</h1>
        </div>
        <form action="controller.do" method="post">
        <h3 class="page-header"style="text-align:left; padding-bottom: 20px; padding-top: 50px" >Cadastro</h3>
            <div class="row">
                <div class="form-group col-md-12 mx-auto">
                    <input type="text" class="form-control rounded" id="nome" name="nome" placeholder="Nome">
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-12 mx-auto">
                    <input type="text" class="form-control rounded" id="cpf" name="cpf" placeholder="CPF">
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-12 mx-auto">
                    <input type="text" class="form-control rounded" id="cpf" name="cpf" placeholder="Telefone">
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-12 mx-auto">
                    <input type="text" class="form-control rounded" id="cpf" name="cpf" placeholder="Usuário">
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-12 mx-auto">
                    <input type="password" class="form-control rounded" id="cpf" name="cpf" placeholder="Senha">
                </div>
            </div>
            <div class="dropdown">
	            <select class="form-control" id="tipo" name="tipo">
	            	<option>Remetente</option>
	                <option>Destinatário</option>
	            </select>                
            </div>
            <div id="actions" class="row">
				<div class="col-md-12 mx-auto" style="text-align: center; padding-top: 40px" >
					<button type="submit" class="btn btn-primary btn-lg btn-block rounded-pill" name="command" value="Cadastrar">Entrar</button>
				</div>
				<div class="col-md-12 mx-auto" style="text-align: center; padding-top: 15px">
					<button type="submit" class="btn btn-secondary btn-lg btn-block rounded-pill" name="command" value="Cancelar">Cancelar</button>
				</div>
			</div>
        </form>
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
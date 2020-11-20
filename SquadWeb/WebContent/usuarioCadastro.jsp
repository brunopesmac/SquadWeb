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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.11/jquery.mask.min.js"></script>
        <title>ProjectC</title>

    </head>
    <body>
    	<pre></pre>
    	<pre></pre>
        <div id="main" class="container">
            <h1 class="page-header"style="text-align:center">ProjetoC</h1>
        </div>
        <pre></pre>
        <form action="controller.do" method="post">
        	<div class="row">
        		<div class="form-group col-md-12 mx-auto">
        			<h3>Cadastro</h3>
        		</div>
        	</div>
            <div class="row">
                <div class="form-group col-md-12 mx-auto">
                    <input type="text" class="form-control rounded" id="nome" name="nome" placeholder="Nome Completo"required>
                </div>
            </div>
            <div class="row">
				<div class="form-group col-md-12 mx-auto">
					<input type="email" class="form-control" name="email" id="email" required maxlength="100" placeholder="Email"required/>
				</div>
			</div>	
            <div class="row">
                <div class="form-group col-md-12 mx-auto">
                    <input type="text" class="form-control rounded" id="cpf" name="cpf" placeholder="CPF"required  onkeypress="return isNumberKey(event)" pattern=".{14,}"   required title="Digite um cpf válido" onkeydown="javascript: fMasc( this, mCPF );" maxlength="14">
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-12 mx-auto">
                    <input type="text" class="form-control rounded" id="fone" name="fone" placeholder="Número de Celular" required pattern=".{11,}" onkeypress="return isNumberKey(event)" title="Digite o número de celular"  maxlength="20">
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-12 mx-auto">
                    <input type="text" class="form-control rounded" id="login" name="login" placeholder="Usuário (Usado Para Login)"required>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-12 mx-auto">
                    <input type="password" class="form-control rounded" id="senha" name="senha" placeholder="Senha"required>
                </div>
            </div>
            <div class="dropdown">
	            <select class="form-control" id="tipo" name="tipo"required>
	            	<option>Selecione o tipo de usuário</option>
	            	<option>Remetente</option>
	                <option>Destinatário</option>
	            </select>                
            </div>
            <pre></pre>
            <pre></pre>
            <div id="actions" class="row">
				<div class="col-md-6 mx-auto" style="text-align: center">
					<button type="submit" class="btn btn-primary btn-lg btn-block rounded-pill" name="command" value="IncluirUsuario">Cadastrar</button>
				</div>
				<div class="col-md-6 mx-auto" style="text-align: center">
					<a href="index.jsp" class="btn btn-secondary btn-lg btn-block rounded-pill">Cancelar</a>
				</div>
			</div>
			<pre></pre>
			<pre></pre>	
			<div id="actions" class="row">
				<div class="col-md-12 mx-auto" style="text-align: center">
				<a href="index.jsp" class="btn btn-default custom"><u>Já tem cadastro?Clique Aqui</u></a>
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
    <script type="text/javascript" src="<%= request.getContextPath() %>/js/inputText.js"></script>
    <script type="text/javascript">
    $("#fone, #celular").mask("(00) 00000-0000");
    </script>
</html>
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
        
    </head>
    <!-- Rodape -->
    <c:import url="Menu.jsp"/>
    
    <body>
        <div id="main" class="container">
            <img srcset= "imagens/logosj.png 320w,
             			  imagens/logosj.png 480w,
                          imagens/logosj.png 800w"
     			  sizes= "(max-width: 320px) 280px,
             			  (max-width: 480px) 440px,
            			  800px "
     			    src= "imagens/logosj.png"
            		class="mx-auto d-block">
            <pre></pre>
            <pre></pre>
            <h1 class="page-header" style = "text-align:center;" >ProjetoC</h1>
            <h1 class="page-header" style = "text-align:center;" >Bem vindo(a) ${logado.nome}, selecione uma opção no menu acima</h1>
        </div>
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
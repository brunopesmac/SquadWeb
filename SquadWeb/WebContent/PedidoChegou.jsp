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
        	h4 {
        		color: #FFFFFF;
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
        <form action="controller.do" method="post">
        	<div class="row">
        		<div class="col-md-12 mx-auto">
        			<h3 style="text-align:center">Seu Pedido Chegou!</h3>
        		</div>
        	</div>
        	<pre></pre>
        	<pre></pre>
        	<div class="row">
        		<div class="col-md-12 mx-auto">
        			<h4 style="text-align:center">Identifique-se</h4>
        		</div>
        	</div>
        	<pre></pre>
        	<div class="row">
        		<div class="col-md-6 mx-auto">
        			<img srcset = "imagens/QRCode.png 300w"
     	      			  sizes = "(max-width: 320px) 75px,
                        	       (max-width: 470px) 150px,
                            	   (max-width: 600px) 200px,
                            	   300px "
     			      	    src = "imagens/QRCode.png"
                     	  class = "mx-auto d-block">
                </div>
                <div class="col-md-6 mx-auto">
        			<img srcset = "imagens/Digital.png 512w"
     	      			  sizes = "(max-width: 320px) 75px,
                        	       (max-width: 470px) 150px,
                            	   (max-width: 600px) 200px,
                            	   400px "
     			      	    src = "imagens/Digital.png"
                     	  class = "mx-auto d-block">
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
<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 

<nav class="navbar navbar-expand-lg navbar-light">
	<a class="navbar-brand" href="TelaInicial.jsp">ProjetoC</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
		aria-expanded="false" aria-label="Alterna navegação">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarNavDropdown">
		<ul class="nav navbar-nav navbar-right">
		<c:choose>
		
   			<c:when test="${logado.tipo == 2}">
   				<li class="nav-item active"><a class="nav-link" href="enviar_pedir.jsp">Fazer entrega</a></li>
				<li class="nav-item active"><a class="nav-link"	href="#">Trajetos</a></li>
   			</c:when> 
   			
   			<c:when test="${logado.tipo == 3}">
   				<li class="nav-item active"><a class="nav-link" href="enviar_pedir.jsp">Fazer pedido</a></li>
				<li class="nav-item active"><a class="nav-link"	href="#">Trajetos</a></li>
   			</c:when> 
   			
   			<c:otherwise>
   				<li class="nav-item active"><a class="nav-link" href="#">Editar usuário</a></li>
				<li class="nav-item active"><a class="nav-link"	href="#">Trajetos</a></li>
   			</c:otherwise> 
   			   
		</c:choose>
			
		</ul>
	</div>
	<button type="button" class="btn btn-danger" style="float: right;"
			data-toggle="modal" data-target="#logoff" id="btn-logoff">Logoff</button>
	<!-- The Modal -->
	<div class="modal" id="logoff">
		<div class="modal-dialog">
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">Logoff</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<!-- Modal body -->
				<div class="modal-body">Deseja mesmo fazer logoff?</div>

				<!-- Modal footer -->
				<div class="modal-footer">
					<a href="<%=request.getContextPath()%>/controller.do?command=Logoff" class="btn btn-danger">Fazer
						logoff</a>
					<button type="button" class="btn btn-outline-primary"
						data-dismiss="modal">Cancelar</button>
				</div>
			</div>
		</div>
	</div>
	<script>
	$(document).ready(function(){
  		$("#btn-logoff").click(function(){
    		$("#logoff").modal("show");
  		});
	});
</script>
</nav>


	
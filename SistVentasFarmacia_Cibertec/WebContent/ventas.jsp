<%@page import="beans.EmpleadoDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%
	EmpleadoDTO empleado = null;
	if(session.getAttribute("usuario")!=null){
		empleado = (EmpleadoDTO) session.getAttribute("usuario");
	}else{
		response.sendRedirect("login.jsp");
	}
%>

<!-- Encabezado -->
<jsp:include page="WEB-INF/head.jsp">
	<jsp:param value="Ventas" name="title"/>
</jsp:include>

<!-- Menú -->
<jsp:include page="WEB-INF/menu-navegacion.jsp">
	<jsp:param value="ventas" name="item"/>
</jsp:include>

<%-- <!DOCTYPE>
<html lang="ES">
<head>
<%@ include file="meta.jsp"%>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/extras.css">
<link rel="icon" type="image/png" href="img/icon.png" />
<title>Ventas</title>
</head>
<body>
	<!--Header-->
	<%@ include file="header.jsp"%> --%>
	<!--Container-fluid-->
	<div class="container-fluid">
		<div class="row">
			<nav class="col-sm-3 col-md-2 hidden-xs-down bg-faded sidebar">
				<ul class="nav nav-pills flex-column">
					<li class="nav-item"><a class="nav-link active" href="#">Vista
							general <span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Reportes</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Estadísticas</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Exportar</a></li>
				</ul>
			</nav>

			<main class="col-sm-9 offset-sm-3 col-md-10 offset-md-2 pt-3">
			<h1>Ventas</h1>

			<section class="row text-center placeholders">
				<div class="col-6 col-sm-3 placeholder">
					<img
						src="data:image/gif;base64,R0lGODlhAQABAIABAAJ12AAAACwAAAAAAQABAAACAkQBADs="
						width="200" height="200" class="img-fluid rounded-circle"
						alt="Generic placeholder thumbnail">
					<h4>Label</h4>
					<div class="text-muted">Something else</div>
				</div>
				<div class="col-6 col-sm-3 placeholder">
					<img
						src="data:image/gif;base64,R0lGODlhAQABAIABAADcgwAAACwAAAAAAQABAAACAkQBADs="
						width="200" height="200" class="img-fluid rounded-circle"
						alt="Generic placeholder thumbnail">
					<h4>Label</h4>
					<span class="text-muted">Something else</span>
				</div>
				<div class="col-6 col-sm-3 placeholder">
					<img
						src="data:image/gif;base64,R0lGODlhAQABAIABAAJ12AAAACwAAAAAAQABAAACAkQBADs="
						width="200" height="200" class="img-fluid rounded-circle"
						alt="Generic placeholder thumbnail">
					<h4>Label</h4>
					<span class="text-muted">Something else</span>
				</div>
				<div class="col-6 col-sm-3 placeholder">
					<img
						src="data:image/gif;base64,R0lGODlhAQABAIABAADcgwAAACwAAAAAAQABAAACAkQBADs="
						width="200" height="200" class="img-fluid rounded-circle"
						alt="Generic placeholder thumbnail">
					<h4>Label</h4>
					<span class="text-muted">Something else</span>
				</div>
			</section>
			<br>
			<div class="table-responsive">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>#</th>
							<th>Header</th>
							<th>Header</th>
							<th>Header</th>
							<th>Header</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1,001</td>
							<td>Lorem</td>
							<td>ipsum</td>
							<td>dolor</td>
							<td>sit</td>
						</tr>
						<tr>
							<td>1,002</td>
							<td>amet</td>
							<td>consectetur</td>
							<td>adipiscing</td>
							<td>elit</td>
						</tr>
						<tr>
							<td>1,003</td>
							<td>Integer</td>
							<td>nec</td>
							<td>odio</td>
							<td>Praesent</td>
						</tr>
						<tr>
							<td>1,003</td>
							<td>libero</td>
							<td>Sed</td>
							<td>cursus</td>
							<td>ante</td>
						</tr>
						<tr>
							<td>1,004</td>
							<td>dapibus</td>
							<td>diam</td>
							<td>Sed</td>
							<td>nisi</td>
						</tr>
						<tr>
							<td>1,005</td>
							<td>Nulla</td>
							<td>quis</td>
							<td>sem</td>
							<td>at</td>
						</tr>
						<tr>
							<td>1,006</td>
							<td>nibh</td>
							<td>elementum</td>
							<td>imperdiet</td>
							<td>Duis</td>
						</tr>
						<tr>
							<td>1,007</td>
							<td>sagittis</td>
							<td>ipsum</td>
							<td>Praesent</td>
							<td>mauris</td>
						</tr>
						<tr>
							<td>1,008</td>
							<td>Fusce</td>
							<td>nec</td>
							<td>tellus</td>
							<td>sed</td>
						</tr>
						<tr>
							<td>1,009</td>
							<td>augue</td>
							<td>semper</td>
							<td>porta</td>
							<td>Mauris</td>
						</tr>
						<tr>
							<td>1,010</td>
							<td>massa</td>
							<td>Vestibulum</td>
							<td>lacinia</td>
							<td>arcu</td>
						</tr>
						<tr>
							<td>1,011</td>
							<td>eget</td>
							<td>nulla</td>
							<td>Class</td>
							<td>aptent</td>
						</tr>
						<tr>
							<td>1,012</td>
							<td>taciti</td>
							<td>sociosqu</td>
							<td>ad</td>
							<td>litora</td>
						</tr>
						<tr>
							<td>1,013</td>
							<td>torquent</td>
							<td>per</td>
							<td>conubia</td>
							<td>nostra</td>
						</tr>
						<tr>
							<td>1,014</td>
							<td>per</td>
							<td>inceptos</td>
							<td>himenaeos</td>
							<td>Curabitur</td>
						</tr>
						<tr>
							<td>1,015</td>
							<td>sodales</td>
							<td>ligula</td>
							<td>in</td>
							<td>libero</td>
						</tr>
					</tbody>
				</table>
				<nav aria-label="Page navigation example">
					<ul class="pagination justify-content-center">
						<li class="page-item disabled"><a class="page-link" href="#"
							tabindex="-1">Previous</a></li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#">Next</a></li>
					</ul>
				</nav>
			</div>
			</main>
		</div>
	</div>

<!-- Pie de página -->
<%@include file="WEB-INF/footer.jsp" %>
<!-- 	<script src="js/jquery-3.2.1.slim.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html> -->
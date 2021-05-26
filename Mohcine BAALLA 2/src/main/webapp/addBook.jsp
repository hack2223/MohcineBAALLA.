<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ajout d'un livre</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="js/bootstrap.js"></script>
</head>
<body>

	<jsp:include page="navBar.jsp"></jsp:include>
	<div class="Container">
		<div class="row justify-content-center ">
			<div class="col-4 mt-5">
				<%
				if (request.getParameter("res") != null) {
					if (request.getParameter("res").equals("err")) {
				%>
				<li class="list-group-item list-group-item-danger">les champs ne doivent pas rester vide !</li>

				<%
				}
				}
				%>

				<form action="addBook" method="Post">
				<legend>Ajout d'un livre</legend>
				<div class="mb-3 row border border-dark rounded p-3">
					<div class="form-group  mt-3">
						<label for="name" class="col-sm-2 col-form-label">Nom</label> 
						<input type="text" class="form-control-plaintext"  id="name" name="name" placeholder="Entrer le nom">
					</div>
					<div class="form-group mt-3">
						<label for="Categorie" class="col-sm-2 col-form-label" >Genre</label> 
						<input type="text"
							 id="Categorie" name="categorie" class="form-control-plaintext"
							placeholder="Entrer le Genre">
					</div>
					<div class="form-group mt-3">
						<label for="Autheur" class="col-sm-2 col-form-label">Autheur</label> 
						<input type="text"
							 id="Autheur" name="author" class="form-control-plaintext"
							placeholder="Entrer l'Autheur">
					</div>
					<div class="form-group mt-3">
						<button type="submit" class="btn btn-dark px-5">Ajouter</button>
						
					</div>
</div>

				</form>
			</div>
		</div>
	</div>



</body>
</html>
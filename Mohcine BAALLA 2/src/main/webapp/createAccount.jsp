<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ajout d'un compte</title>
<link href="css/bootstrap.css" rel="stylesheet">
<script src="js/bootstrap.js"></script>
</head>
<body>

	<div class="Container">
		<div class="row justify-content-center ">
			<div class="col-4 mt-5">
				<%
				if (request.getParameter("res") != null) {
					if (request.getParameter("res").equals("err")) {
				%>
				<li class="list-group-item list-group-item-danger">les champs ne doivent pas rester vide</li>

				<%
				}
				}
				%>

				<form action="addStudent" method="post">
				<legend>Ajout d'un compte</legend>
				<div class="mb-3 row border border-dark rounded p-3">
					<div class="form-group  mt-3">
						<label for="log" class="col-sm-2 col-form-label">Login</label> 
						<input type="text"
							class="form-control-plaintext" id="log" name="login" placeholder="Entrer le login">
					</div>
					<div class="form-group mt-3">
						<label for="pass" class="col-sm-2 col-form-label">Password</label> 
						<input type="password"
							class="form-control-plaintext" id="pass" name="password"
							placeholder="Entrer le mot de passe">
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
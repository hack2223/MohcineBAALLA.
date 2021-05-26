<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Authentification</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
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
				<li class="list-group-item list-group-item-danger">Votre login ou mot de passe est incorrect !</li>

				<%
				} else if(request.getParameter("res").equals("succ")) {
				%>
				<li class="list-group-item list-group-item-success">le compte a été créé avec succès ...</li>
				<%
				}
				}
				%>
				


				<form action="Connection" method="post">
				<div class="mt-4 row border border-dark rounded p-4">
					
					<label for="log" class="col-sm-4 col-form-label">Login</label> 
					<div class="col-sm-8">		
					<input type="text" class="form-control-plaintext" id="log" name="login" placeholder="Enter your login">
					</div>
					<br/><br/>
					<label for="pass" class="col-sm-4 col-form-label">Mot de passe</label> 
					<div class="col-sm-8">		
					<input type="password" class="form-control-plaintext" id="pass" name="password" placeholder="Enter your Password">
					</div>
					<div class="form-group mt-3">
						<button type="submit" class="btn btn-info px-5">Se connecter</button>
						<a href="createAccount.jsp" class="btn btn-info px-5 ml-3">Créer compte</a>
					</div>
				</div>

				</form>
			</div>
		</div>
	</div>




</body>
</html>
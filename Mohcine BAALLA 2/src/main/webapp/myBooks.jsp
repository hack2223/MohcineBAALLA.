<%@page import="com.util.db.BookManager"%>
<%@page import="com.util.db.Book"%>
<%@page import="java.util.List"%>
<%@page import="com.util.db.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Books</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="js/bootstrap.js"></script>
</head>
<body>

	
<%
Student s = (Student)session.getAttribute("student");
BookManager bm = new BookManager();
%>


<%
if(request.getParameter("op")!=null)
{
	if(request.getParameter("op").equals("delete"))
	{
		int id = Integer.parseInt(request.getParameter("id"));
		bm.returnBookToBiblio(id);
	}	
}
%>

	

	<jsp:include page="navBar.jsp"></jsp:include>
	
	
	<%
	int ide = s.getId();
	List<Book>
	ab = bm.allStudentBooks(ide);
	%>
	
	<div class="Container m-5">
		<h4>
			<%=s.getLogin().toUpperCase()%>
		</h4>
		<p>La bibliothèque :</p>
		<div class="row ">
			<%
			for (Book b : ab) {
			%>
			<div class="col-4 mt-3">
				<div class="card">
					<div class="card-header">
						<div class="row justify-content-between">
							<div class="col-4">
								<h5><%=b.getName().toUpperCase()%></h5>
							</div>
							
							<div class="col-5">
								<a href="?op=delete&id=<%= b.getId()%>" class="btn btn-danger px-5 py-2 "> rendre </a>
							</div>
							
							
						</div>

					</div>
					<div class="card-body">

						<p class="card-text ">
							<b>Genre : </b><%=b.getCategorie()%>
						</p>
						<p class="card-text ">
							<b>Auteur :</b> <%=b.getAuthor()%>
							
						</p>
	
					</div>
				</div>
			</div>
			<%
			}
			%>
		</div>
	</div>


</body>
</html>
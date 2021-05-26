

<%@page import="com.util.db.Student"%>

<%
	Student s= (Student)session.getAttribute("student");
%>


	<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container">

  <a class="navbar-brand" href="index.jsp">Bibliothèque</a>
  
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      
      <li class="nav-item">
        <a class="nav-link" href="myBooks.jsp">Mes livres</a>
      </li>
      
     
    </ul>
   
  </div>
  </div>
</nav>
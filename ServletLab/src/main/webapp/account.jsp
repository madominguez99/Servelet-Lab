<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="com.user.Student" %>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css">
    <% Student student = (Student) session.getAttribute("student"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-expand-md navbar-dark 
fixed-top bg-darl<'> <a class="navbar-brand" href="#'> 
Welcome To <% out.print(student.getSchoolNameO); %> </a> 
<button class="navbar-toggler' type="button" data-toggle="collapse" 
data-targel="#navbarsExampleDefaulf' aria-controls="navbarsExampleDefaulf'
aria-expanded="false" aria-label="Toggle navigation"> 
<span class="navbar-toggler-icon"></span> </button> 
<div class="collapse navbar-collapse" id="navbarsExampleDefaulf'> 
</div> </nav>
<!-- Main jumbotron for a primary marketing message or call to action--> 
<div class="jumbotron"> 
<div class="containe('> 
<h1 >Hello, <% out.print(student.g etFirstNameO); %></h1 > 
<p> This is a simple java servlet program for a functional website. </p> 
</div> 
</div> 
<div class="containef'> 
<!-- Example row of columns--> 
<div class="roW'> 
<div class="col-md-4"> 
<h2>My GPA <lh2> 
<p><% out.print(student.getGpaO); %><Ip> 
</div> 
<div class="col-md-4"> 
<h2>Enter Grades <lh2> 
<form action="GpaServlef' method="posf'> 
<div class="form-group"> 
<label for="gradeOne">GradeOne</I abel> 
<input type="texf' class="form-contro I" name="gradeOne" id="gradeOne" 
placeholder="Grade One"> 
</div> 
<div class="form-group"> 
<label for="gradeTwo">Grade Two</label> 
<inputtype="texf' class="form-control" name="gradeTwo" id="gradeTwo" 
placeholder="Grade Two"> 
</div> 
<div class="form-group"> 
<label for="gradeThree">Grade Three</label> 
<input type="texf' class="form-control" name="gradeThree" id="gradeThree" 
placeholder="Grade Three"> 
</div> 
<button type="submif' class="btn btn-defaulf'>Submit</button> 
</form> 
</div> 
<hr> 
<footer> 
<p>&copy; 2017 Company, Inc. <Ip> 
</footer> 
</div> <!--/container--> 
</div>

</body>
</html>
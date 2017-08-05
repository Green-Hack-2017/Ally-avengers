<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login Form</title>
</head>
<body>
<h1>${message}</h1>
<h1>${fname}</h1>
<h1>${lname}</h1>

<form:errors path="customer.*"/>
 <form action="login" method="post">
 <input type="text" name="customerFname"/>
 <input type="text" name="customerLname"/>
 <input type="text" name="id"/>
 <input type="submit" value="create Login"> 
 </form>
</body>
</html>
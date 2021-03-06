<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Registration Form</title>
</head>
<body>
	<form:form action="processForm" modelAttribute="student">
		<!-- Spring MVC will call getFirstName and populate it before hand. After submit it will call setFirstName -->
		First Name: <form:input path="firstName" />
		<br></br>
		Last Name: <form:input path="lastName" />
		<br></br>
		Country: 
		<form:select path="country">
			<form:options items="${student.countryOptions}" />
			<br></br>
		</form:select>
		<br></br>
		Java<form:radiobutton path="favoriteLanguage" value="Java" />
			C#<form:radiobutton path="favoriteLanguage" value="C#" />
			PHP<form:radiobutton path="favoriteLanguage" value="PHP" />
			Ruby<form:radiobutton path="favoriteLanguage" value="Ruby" />
		<br></br>
		Linux<form:checkbox path="operatingSystems" value="Linux"/>
		Mac OS<form:checkbox path="operatingSystems" value="Mac OS"/>
		Windows<form:checkbox path="operatingSystems" value="Windows"/>
		Ubuntu<form:checkbox path="operatingSystems" value="Ubuntu"/>
		<br></br>
		<input type="submit" value="Submit" />
	</form:form>
</body>
</html>
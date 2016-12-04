<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Product Page</title>
</head>
<body>
<form:form action="addproductdb" method="POST" commandName="product" enctype="multipart/form-data">
<table>
    <tr>
        <td>Product Name :</td>
        <td><form:input path="name" /></td>
    </tr>
   
    <tr>
        <td>Product Price :</td>
        <td><form:input path="price" /></td>
    </tr>
    
    <tr>
        <td>Product Category :</td>
        <td>
            <form:radiobutton path="category" value="G" label="G" /> 
            <form:radiobutton path="category" value="T" label="T" />
            <form:radiobutton path="category" value="I" label="I" />
        </td>
    </tr>
    
    <tr>
        <td>Product Description :</td>
        <td><form:textarea path="description" /></td>
    </tr>
<tr>
<td><form:input type="file" path="image"/></td>
</tr>    

    <tr>
        <td colspan="2"><input type="submit" value="Register"></td>
    </tr>
</table>
</form:form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show All Products</title>

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  
  <style>
table {
    border-collapse: collapse;
    border-spacing: 0;
    width: 100%;
    border: 1px solid #ddd;
}

th, td {
    border: none;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}
</style>


</head>
<body>

<div class="container">
  <h2>All Products - Table responsive </h2>
  <div style="overflow-x:auto;">
  
    <table border=1>
      <tr>        
        <th>Product Id</th>
        <th>Product Name</th>
        <th>Product Category</th>
        <th>Product Price</th>
        <th>Product Description</th>       
      </tr>
   
    <tbody>    
    <c:forEach items="${productList}" var="product">
  <tr><td><p>${product.id}</p></td>
    <td><p>${product.name}</p></td>
    <td><p>${product.category}</p></td>
    <td><p>${product.price}</p></td>
    <td><p>${product.description}</p></td>
   
   <td><img src="<c:url value='/resources/${product.id}.jpg'/>"height="50" width="50" /></td>
   <td><button type="button">Update</button></td>
    <td><button type="button">Delete</button>  <br/></td></tr>
    </c:forEach>
  </table>

    </tbody>
  </table>
  </div>
</div>

</body>
</html>
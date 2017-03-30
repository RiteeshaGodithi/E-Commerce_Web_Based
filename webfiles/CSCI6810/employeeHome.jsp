<%@page import="java.util.ArrayList"%>
<%@page import="fdu.student.godithi.Product"%>
<html>
<head>
<title>Home Page</title>
<script>
function fun()
{
 window.location.href="employeeHome.jsp";
}
function fun1()
{
 window.location.href="addProduct.jsp";
}
function fun2()
{
 window.location.href="update.jsp";
}
function fun3()
{
 window.location.href="delete.jsp";
}
function fun4()
{
 window.location.href="logout.jsp";
}
</script>
</head>
<body>
<!--
<h2>Employee Home Page</h2>
<br>
<table border="0">
<form name="f" method="post">
<tr><td><input type="button" value="Search" onClick="fun()" style="height:30px; width:260px"></td><td><input type="button" value="Add" onClick="fun1()"style="height:30px; width:260px"></td><td><input type="button" value="Update" onClick="fun2()" style="height:30px; width:260px"></td><td><input type="button" value="Delete" onClick="fun3()" style="height:30px; width:260px"></td><td><input type="button" value="Logout" onClick="fun4()" style="height:30px; width:260px"></td></tr>
</form>
</table>
<br>-->
<p align="center">Search Product Page</p>
<br>
<form name="f1" method="post" action="employeeHome.jsp">
<table align="center">
<tr><td>Search with Product ID:</td><td><input type="text" name="search" required="true"></td></tr>
<tr><td></td><td><input type="submit" value="Check"></td></tr>
</table>
</form>
<%
  String searchString=request.getParameter("search");
  if(searchString!=null){
  Product prod=new Product();
  ArrayList<Product> product=prod.esearchByName(searchString);
  Product p=product.get(0);
  if(p!=null)
  {
  %>
  <table border="1" align="center">
  <tr><td>ID</td><td>Name</td><td>Quantity</td><td>Price</td><td>Description</td>
  <tr><td><%=p.getProductID()%></td><td><%=p.getProductName()%></td><td><%=p.getProductQuantity()%></td><td><%=p.getProductPrice()%></td><td><%=p.getProductDescription()%></td>
  </tr>
  </table>
  <%
  }
  }
%>
</body>
</html>
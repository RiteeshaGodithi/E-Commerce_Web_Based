<%@page import="java.util.ArrayList"%>
<%@page import="fdu.student.godithi.Product"%>
<html>
<head>
<title>Home Page</title>
<script>
function fun()
{
 window.location.href="customerHome.jsp";
}
function fun1()
{
 window.location.href="review.jsp";
}
function fun2()
{
 window.location.href="logout1.jsp";
}
</script>
</head>
<body>
<!--
<h2>Customer Home Page</h2>
<br>
<table border="0">
<form name="f" method="post">
<tr><td><input type="button" value="Search" onClick="fun()" style="height:30px; width:260px"></td><td><input type="button" value="Review" onClick="fun1()"style="height:30px; width:260px"></td><td><input type="button" value="Logout" onClick="fun2()" style="height:30px; width:260px"></td></tr>
</form>
</table>
<br>-->
<p align="center">Search Product Page</p>
<br>
<form name="f1" method="post" action="customerHome.jsp">
<table align="center">
<tr><td>Product Name:</td><td><input type="text" name="search" required="true"></td></tr>
<tr><td></td><td><input type="submit" value="Check"></td></tr>
</table>
</form>
<%
  String searchString=request.getParameter("search");
  System.out.println("Hello" +searchString);
  if(searchString!=null){
  Product prod=new Product();
  ArrayList<Product> product=prod.searchByName(searchString);
  Product p=product.get(0);
  System.out.println("Hi" +p.getProductID());
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
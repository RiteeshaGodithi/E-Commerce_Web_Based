<%@page import="java.util.ArrayList"%>
<%@page import="fdu.student.godithi.Product"%>
<html>
<head>
<title>Product Update</title>
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
<p align="center">Update Product</p>
<!--
<br>
<table border="1" align="center">
<form name="f" method="post">
<tr><td><input type="button" value="Search" onClick="fun()" style="height:30px; width:260px"></td><td><input type="button" value="Add" onClick="fun1()"style="height:30px; width:260px"></td><td><input type="button" value="Update" onClick="fun2()" style="height:30px; width:260px"></td><td><input type="button" value="Delete" onClick="fun3()" style="height:30px; width:260px"></td><td><input type="button" value="Logout" onClick="fun4()" style="height:30px; width:260px"></td></tr>
</form>
</table>
<br>
<p align="center">Update Product</p>
<br>-->
<form name="f1" method="post" action="update.jsp">
<table align="center">
<tr><td>Search:</td><td><input type="text" name="search" required="true"></td></tr>
<tr><td></td><td><input type="submit" value="Check"></td></tr>
</table>
</form>
<%
  String returnVal=request.getParameter("val");
  if(returnVal!=null)
  {
    if(returnVal.equals("1")){
%>
<script>window.alert("Product Details Updated");</script>
<%  
  }}
  String searchString=request.getParameter("search");
  if(searchString!=null){
  Product prod=new Product();
  ArrayList<Product> product=prod.esearchByName(searchString);
  Product p=product.get(0);
  if(p!=null)
  {
  %>
  
  <form name="f1" method="post" action="updateDb.jsp">
<table align="center">
<tr><td>Product ID:</td><td><input type="text" name="pid" value="<%=p.getProductID()%>" readonly></td></tr>
<tr><td>Name:</td><td><input type="text" name="pname" value="<%=p.getProductName()%>" required="true"></td></tr>
<tr><td>Quantity:</td><td><input type="text" name="pquan" value="<%=p.getProductQuantity()%>" required="true"></td></tr>
<tr><td>Price:</td><td><input type="text" name="pprice" value="<%=p.getProductPrice()%>" required="true"></td></tr>
<tr><td>Description:</td><td><input type="text" name="pdesc" value="<%=p.getProductDescription()%>" required="true"></td></tr>
<tr><td></td><td><input type="submit" value="Update"></td></tr>
</table>
</form>
  <%
  }
  }
%>
</body>
</html>
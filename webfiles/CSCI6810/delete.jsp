<%@page import="fdu.student.godithi.Product"%>
<html>
<head>
<title>Product Delete</title>
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
<body><!--
<h2>Product Delete Page</h2>
<br>
<table border="0">
<form name="f" method="post">
<tr><td><input type="button" value="Search" onClick="fun()" style="height:30px; width:260px"></td><td><input type="button" value="Add" onClick="fun1()"style="height:30px; width:260px"></td><td><input type="button" value="Update" onClick="fun2()" style="height:30px; width:260px"></td><td><input type="button" value="Delete" onClick="fun3()" style="height:30px; width:260px"></td><td><input type="button" value="Logout" onClick="fun4()" style="height:30px; width:260px"></td></tr>
</form>
</table>
<br>-->
<p align="center">Delete Product</p>
<br>
<form name="f1" method="post" action="delete.jsp">
<table align="center">
<tr><td>Product ID:</td><td><input type="text" name="search" required="true"></td></tr>
<tr><td></td><td><input type="submit" value="Delete"></td></tr>
</table>
</form>
<%
  String searchString=request.getParameter("search");
  if(searchString!=null){
  Product prod=new Product(searchString,"","","","");
  //int i=prod.deleteByName(searchString);
  if(prod.deleteProduct())
  {
  %>
  <h4 ALIGN='center'>Product was deleted</h4>
  <%
  }
  }
%>
</body>
</html>
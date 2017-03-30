
<%@page import="fdu.student.godithi.Product"%>
<html>
<head>
<title>Product Add</title>
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
<h2>Add Product Page</h2>
<br>
<table border="0">
<form name="f" method="post">
<tr><td><input type="button" value="Search" onClick="fun()" style="height:30px; width:260px"></td><td><input type="button" value="Add" onClick="fun1()"style="height:30px; width:260px"></td><td><input type="button" value="Update" onClick="fun2()" style="height:30px; width:260px"></td><td><input type="button" value="Delete" onClick="fun3()" style="height:30px; width:260px"></td><td><input type="button" value="Logout" onClick="fun4()" style="height:30px; width:260px"></td></tr>
</form>
</table>
<br>-->
Add Product
<br>
<form name="f1" method="post" action="addProduct.jsp">
<table>
<tr><td>Product ID:</td><td><input type="text" name="pid" required="true"></td></tr>
<tr><td>Name:</td><td><input type="text" name="pname" required="true"></td></tr>
<tr><td>Quantity:</td><td><input type="text" name="pquantity" required="true"></td></tr>
<tr><td>Price:</td><td><input type="text" name="pprice" required="true"></td></tr>
<tr><td>Description:</td><td><input type="text" name="pdesc" required="true"></td></tr>

<tr><td></td><td><input type="submit" value="Add"></td></tr>
</table>
</form>
<%
  String pid=request.getParameter("pid");
  String name=request.getParameter("pname");
  String quan=request.getParameter("pquantity");
  String price=request.getParameter("pprice");
  String desc=request.getParameter("pdesc");
  
  if(pid!=null || name!=null || quan!=null || price!=null || desc!=null)
  {
     
     Product prod=new Product(pid,name,quan,price,desc);
     System.out.println("qqq "+pid);
     System.out.println("www "+name);
     System.out.println("eee "+quan);
     System.out.println("rrr "+price);
     System.out.println("ttt "+desc);
     //int i=prod.addProd();
     if(prod.addProduct())
	 {
	   %>
	   <h4 ALIGN='center'>Product was added to the database...</h4>
	   <%
	 }
  }
%>
</body>
</html>
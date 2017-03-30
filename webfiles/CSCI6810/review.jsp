<%@include file="db.jsp"%>
<html>
<head>
<title>Review Page</title>
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
<%
  String name=session.getAttribute("name").toString();
%><!--
<h2 align="center">Review Page</h2>
<br>
<table border="1" align="center">
<form name="f" method="post">
<tr><td><input type="button" value="Search" onClick="fun()" style="height:30px; width:260px"></td><td><input type="button" value="Review" onClick="fun1()"style="height:30px; width:260px"></td><td><input type="button" value="Logout" onClick="fun2()" style="height:30px; width:260px"></td></tr>
</form>
</table>
<br>-->
<p align="center">Product Review Page</p>
<br>
<form name="f1" method="post" action="review.jsp">
<table align="center">
<tr><td>User Name:</td><td><input type="text" name="un" value="<%=name%>" readonly></td></tr>
<tr><td>Product Name:</td><td>
<select name="pname">
<option value="select">Select</option>
<%
  Statement st=con.createStatement();
           ResultSet rs=st.executeQuery("select * from product");
           while(rs.next())
           {
		   %>
		   <option value="<%=rs.getString(2)%>"><%=rs.getString(2)%></option>
		   <%
           }
%>
</select>
</td></tr>
<tr><td>Product Review:</td><td><input type="text" name="prev" required="true"></td></tr>
<tr><td>Product Rating:</td><td><input type="text" name="prat" required="true"></td></tr>
<tr><td></td><td><input type="submit" value="Check"></td></tr>
</table>
</form>
<%
  String namee=request.getParameter("un");
  String pname=request.getParameter("pname");
  String prev=request.getParameter("prev");
  String prat=request.getParameter("prat");
  if(namee!=null || pname!=null || prev!=null || prat!=null){
  int i=st.executeUpdate("insert into review values('"+pname+"','"+namee+"','"+prat+"','"+prev+"')");
  if(i>0){
  %>
  <h4 ALIGN='center'>Thanks for your Review</h4>
  <%
  }
  }
%>
</body>
</html>
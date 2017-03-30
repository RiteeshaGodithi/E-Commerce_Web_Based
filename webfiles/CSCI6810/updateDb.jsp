<%@page import="fdu.student.godithi.Product"%>
<%
  String pid=request.getParameter("pid");
  String name=request.getParameter("pname");
  String quan=request.getParameter("pquan");
  String price=request.getParameter("pprice");
  String desc=request.getParameter("pdesc");
  
  if(pid!=null || name!=null || quan!=null || price!=null || desc!=null)
  {
     
     Product prod=new Product(pid,name,quan,price,desc);
     //int i=prod.update();
     if(prod.updateProduct())
	 {
	   response.sendRedirect("update.jsp?val=1");
	 }
  }
%>
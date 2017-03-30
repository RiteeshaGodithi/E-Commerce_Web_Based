<%@page import="java.sql.*" %>
<%
  Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
  Connection con=DriverManager.getConnection("jdbc:sqlserver://127.0.0.1:1433;databaseName=JavaClass;integratedSecurity=true;");
  System.out.println("connected");
%>
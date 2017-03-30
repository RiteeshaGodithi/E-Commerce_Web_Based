<HTML>
<HEAD><TITLE>JSP Verification</TITLE></HEAD>
<BODY>
<H1>Welcome to Blazix JSP!</H1>
<P>If you are seeing this page in your browser, your Blazix JSP
is correctly set-up!
<P>The purpose of JSPs is to allow dynamically generated content,
so the next paragraph has dynamically generated content!
<P>The time is now <%= new java.util.Date() %><BR>
<%
    try {
	java.net.InetAddress localhost = java.net.InetAddress.getLocalHost();
	out.println( "Local host is " + localhost.getHostName() + "<BR>" );
    } catch (Exception ex) { ex.printStackTrace(); }
%>
Your browser's id (user-agent) string is <%= request.getHeader( "USER-AGENT" ) %>
<P>
Your classpath is: <%= System.getProperty( "java.class.path" ) %>
<BR>
Note that any classes (e.g. beans) needed by JSP files should be in your
classpath.  Any servlet classes should also be in your classpath.
</BODY>
</HTML>

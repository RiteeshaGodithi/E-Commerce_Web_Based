<%@ page import="java.util.*,java.text.*" %>
<%@ taglib prefix="blx" uri="/blx.tld" %>
<blx:xltFile file="translateSample.txt">
<html>
<head>
   <title><blx:xlt ref="title">Translation</blx:xlt></title>
</head>
<body>

<h2>
<blx:xlt ref="header">Translation Sample</blx:xlt></h2>

<blx:xlt ref="content">
Countdown...
<br>Ten
<br>Nine
<br>Eight
<br>Seven
<br>Six
<br>Five
<br>Four
<br>Three
<br>Two
<br>One
<br>Takeoff...
</blx:xlt>
<BR>
<%
   DateFormat dateFormat = DateFormat.getDateTimeInstance( DateFormat.FULL, DateFormat.FULL, request.getLocale());
%>
<%= dateFormat.format( new Date()) %>

<br>&nbsp;
</body>
</html>
</blx:xltFile>

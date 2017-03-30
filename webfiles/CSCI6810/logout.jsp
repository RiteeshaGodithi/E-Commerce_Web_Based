<html>
<head>
<title>Employee Page</title>
<script>
function back()
{
 window.history.forward();
}
</script>
</head>
<body onload="back()">
<h2>Employee Activities</h2>
<br>

<%
  session.invalidate();
%>
<h4 ALIGN='center'>Clossing all sessions... Please close the browser for safety</h4>
</body>
</html>
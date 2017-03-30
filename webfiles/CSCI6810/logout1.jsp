<html>
<head>
<title>Customer Page</title>
<script>
function back()
{
 window.history.forward();
}
</script>
</head>
<body onload="back()">
<h2>Customer Activities</h2>
<br>

<%
  session.invalidate();
%>
<h4 ALIGN='center'>Clossing all sessions... Please close the browser for safety</h4>
</body>
</html>
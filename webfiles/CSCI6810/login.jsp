<%@page import="fdu.student.godithi.Account"%>
<!--
/******************************************************************************
*	Program Author: Dr. Yongming Tang for CSCI 6810 Java and the Internet *
*	Date: September, 2012						      *
*******************************************************************************/
-->

<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.lang.*" %>

		<HTML><HEAD></HEAD>
		<BODY bgcolor='#F1F1FD'>
		<h4 ALIGN='center'>Product Management</h4>
		<FORM NAME="LoginPage" ACTION="/LoginServlet" METHOD ="POST">
		<TABLE cellPadding='3' ALIGN='center'>
		<TR bgcolor='#ECFAEB'>
		<TD>USERNAME:</TD>
		<TD>
		<INPUT TYPE='text' NAME='UserName' SIZE='15' focused>
		</TD>
		</TR>
		<TR bgcolor='#ECFAEB'>
		<TD>PASSWORD:</TD>
		<TD>
		<INPUT TYPE='password' NAME='PassWord' Value='' SIZE='15'>
		<INPUT TYPE='button' NAME='submitBTN' VALUE='Login' onClick="checkInputs()">
                </td></tr>
                <tr><td></td>
                <td>
                New User...<a href="sign.jsp">Register Here</a>
		</TD>
		</TR>
		</TABLE>
		</FORM>
		</BODY>
		<SCRIPT LANGUAGE="JavaScript"> 
		function checkInputs()
		{
		var Prompts = "";
		Username = window.document.LoginPage.UserName.value;
		Password = window.document.LoginPage.PassWord.value;
		if (Username == "" || Password == "") {
		if (Username == "")
		Prompts +="Please enter your username!\n";
		if (Password == "")
		Prompts +="Please enter your password!\n";
		if (Prompts != "")
		window.alert(Prompts);
		} else {
		document.LoginPage.submit();
		}
		}
		</SCRIPT>
		</HTML>
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
		<FORM NAME="LoginPage" ACTION="./SignUpServlet" METHOD ="POST">
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
		<INPUT TYPE='password' NAME='PassWord' SIZE='15'>
		</td></tr>
                <TR bgcolor='#ECFAEB'>
		<TD>CONFIRM PASSWORD:</TD>
		<TD>
		<INPUT TYPE='password' NAME='PassWord1' SIZE='15'>
		</td></tr>
                <TR bgcolor='#ECFAEB'>
		<TD>NAME:</TD>
		<TD>
		<INPUT TYPE='password' NAME='Name' Value='' SIZE='15'>
		</td></tr>
                <TR bgcolor='#ECFAEB'>
		<TD>ID:</TD>
		<TD>
		<INPUT TYPE='password' NAME='EmpID' Value='' SIZE='15'>
		<INPUT TYPE='button' NAME='submitBTN' VALUE='SignUp' onClick="checkInputs()">
                </td></tr>
		</TABLE>
		</FORM>
		</BODY>
		<SCRIPT LANGUAGE="JavaScript"> 
		function checkInputs()
		{
		var Prompts = "";
		Username = window.document.LoginPage.UserName.value;
		Password = window.document.LoginPage.PassWord.value;
                ConfirmPassword = window.document.LoginPage.PassWord1.value;
                Name = window.document.LoginPage.Name.value;
		if (Username == "" || Password == "" || ConfirmPassword=="" || Name=="") {
		if (Username == "")
		Prompts +="Please enter your username!\n";
		if (Password == "")
		Prompts +="Please enter your password!\n";
                if (ConfirmPassword == "")
		Prompts +="Please enter confirm password!\n";
                if (ConfirmPassword != Password)
		Prompts +="Password Doesn't Match\n";
                if (Name == "")
		Prompts +="Please enter your name!\n";
		if (Prompts != "")
		window.alert(Prompts);
		} else {
		document.LoginPage.submit();
		}
		}
		</SCRIPT>
		</HTML>
<html>

<head>
<script>
function Draft(){
	document.f1.action="draft.jsp";
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>compose</title>
</head>

<body>
<form name="f1" method="POST" action="insertmess.jsp">
		
			
<table border="0" width="543" height="264" bgcolor="#C0C0C0">
	<tr>
		<td height="18" width="533">To&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="text" name="too" size="33"></td>
	</tr>
	<tr>
		<td height="14" width="533">Subject&nbsp;
		<input type="text" name="subject" size="33"></td>
	</tr>
	<tr>
		<td height="153" width="533">
		<textarea rows="8" name="message" cols="63"></textarea></td>
	</tr>
	<tr>
		<td height="26" width="533">
		
			<input type="submit" value="send" name="B4">
		<input type="submit" value="draft" onclick="Draft()" name="B5">

		<input type="submit" value="discard" onclick="Draft()" name="B6"></td>
		<input type="text" name="filevalue" value='<%=request.getAttribute("saveFile")%>' size="33">
	</tr>
</table>
		</form>
		
		<FORM ENCTYPE="multipart/form-data" ACTION="upload.jsp" METHOD=POST>
<br><br><br>
<center>
<table border="0" bgcolor=#ccFDDEE>
<tr><center><td colspan="2" align="center"><B>UPLOAD THE FILE</B><center></td></tr>
<tr><td colspan="2" align="center"> </td></tr>
<tr><td><b>Choose the file To Upload:</b></td><td><INPUT NAME="file" TYPE="file"></td></tr>
<tr><td colspan="2" align="center"> </td></tr>
<tr><td colspan="2" align="center"><input type="submit" value="Send File"> </td></tr>
<table>
</center> 
</FORM>
<a href='./uploaded/<%= request.getAttribute("saveFile")%>'><%= request.getAttribute("saveFile")%></a>
<img src='./uploaded/<%= request.getAttribute("saveFile")%>'>


</body>

</html>
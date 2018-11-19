<%@ page import="java.sql.*"%>
 
 <%!
	   Connection con;
	   PreparedStatement ps;
	   ResultSet rs;
	      %>
		  <head>
		  <script>
		  function checkAll() {
     var checkboxes = document.getElementsByTagName('input');
	 var val = null;
     for (var i = 0; i < checkboxes.length; i++) {
         if (checkboxes[i].type == 'checkbox') {
             if (val === null){
		      val = checkboxes[i].checked;
			  }
             checkboxes[i].checked = val;
         }
     }
	 }
function fun(a){
	document.getElementById(a.id).innerHTML=a.name;
}
		
</script>
</head>
<form method="GET" action="deletemsg.jsp">
      <input type="checkbox" onclick="checkAll()" />
	  <input type="button" value="Select All" name="chk[]" onclick="checkAll()"/>
	<input type="submit" value="Delete" name="b1" onclick="fun(this)"/>
	



<meta http-equiv="Content-Language" content="en-us">

  <table border="1" width="1052" height="43" bordercolorlight="#FFFFFF" cellspacing="1" bgcolor="#CCCCCC">
	<tr>
		<td height="37" width="237">
		<p align="center">From </td> 
		<td height="37" width="258">
		<p align="center"><font size="4">Subject</font></td>
		<td height="37" width="273">
		<p align="center">Message </td>
		<td height="37" width="261">
		<p align="center">Date</td>
	</tr>
</table>
<%
   
  
 String emai=(String)session.getAttribute("email");

       try{
		   %>
		   <%@ include file="sql.jsp" %>
		   
		  <%
		  
		  ps=con.prepareStatement("select * from messagedet order by messid desc");
		  rs=ps.executeQuery();
		  while(rs.next())
		  {
			  if(emai.equals(rs.getString("to1")))
			  {
				    if(rs.getString("status").equals("true")){
				  %>
				  <div border="1" width="1226" height="39">
						<a href="readmess.jsp?mid=<%= rs.getInt("messid") %>" width="100%" height="50px">
	                    <table border="0" width="1054" height="39" style="float:left" cellspacing="1">		 
		                     <tr bgcolor=#FFFFFF>
		
					<% }
					    else	
						{
						%>  <div border="1" width="1226" height="39">
						<a href="readmess.jsp?mid=<%= rs.getInt("messid") %>" width="100%" height="50px">
	                    <table border="0" width="1054" height="39" style="float:left" cellspacing="1">		 
		                <tr bgcolor=#C0C0C0>
		
						<% 
						}
						%>
		<td bordercolor="#000000" bgcolor="#666666">
		<div  height="39" width="30"style="float:left; width:29px; height:39px">
	    <p align="left"><input type="checkbox" id="a" name="cboxinbox" value="<%= rs.getInt("messid")%>" onclick="fun(this)"> </div>
		</td>
		<td height="39" width="207"><%= rs.getString("from1")%></td>
		<td height="39" width="260">&nbsp;<%= rs.getString("subject")%> </td>
		<td height="39" width="277">&nbsp;<%= rs.getString("message").substring(0,5)+"......"%></td>
		<td height="39" width="265">&nbsp;<%= rs.getString("date")%></td>
	</tr>
</table>
</div>

	</form>	
			<%  
			  }
		  }
		  
	   }catch(Exception e)
		{
			out.print(e);
		}
	   %>
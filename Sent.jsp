<%@ page import="java.sql.*"%>
 
 <%!
	   Connection con;
	   PreparedStatement ps;
	   ResultSet rs;
	      %>
		  
	<form method="POST" action="deletemsg.jsp">
	<p>&nbsp; <input type="checkbox" name="C1" value="ON"><input type="submit" value="Select  All" name="B1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="submit" value="Delete" name="b1"></p>


 <table border="1" width="1052" height="43" bordercolorlight="#FFFFFF" cellspacing="1" bgcolor="#CCCCCC">
	<tr>
		<td height="37" width="237">
		<p align="center"> To </td> 
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
		  
		  ps=con.prepareStatement("select * from messagedet");
		  rs=ps.executeQuery();
		  while(rs.next())
		  {
			  if(emai.equals(rs.getString("from1")))
			  {
				  %>
				  <div border="1" width="1226" height="39">
						<a href="readmess.jsp" width="100%" height="50px">
	                    <table border="0" width="1054" height="39" style="float:left" cellspacing="1">		 
		                <tr bgcolor=#C0C0C0>
		<td bordercolor="#000000" bgcolor="#666666">
		<div  height="39" width="30"style="float:left; width:29px; height:39px">
	    <p align="left"><input type="checkbox"  name="cboxsent" value="<%= rs.getInt("messid")%>"> </div>
		</td>
		<td height="39" width="207"><%= rs.getString("to1")%></td>
		<td height="39" width="260">&nbsp;<%= rs.getString("subject")%> </td>
		<td height="39" width="277">&nbsp;<%= rs.getString("message")%></td>
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
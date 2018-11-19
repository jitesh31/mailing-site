<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%!
    Connection con;
	PreparedStatement ps;
	ResultSet rs;
%>
<script>
var notType = document.getElementById(id).name;
window.onload=fun();

</script>

 <% 
 
   response.setContentType("text/html");

 String[] arr = request.getParameterValues("cboxinbox");
	 for(int i=0;i<arr.length;i++){
	 try
		   {
			   %>
			     <%@ include file="sql.jsp" %>
			   
			   <%
			   out.print(arr[i]);
			   ps=con.prepareStatement("delete from messagedet where messid="+arr[i]);
			   ps.executeUpdate();
           }
		   catch(Exception e)
		   {
			   out.print(e);
		   }
	 }
		   %>
				<html><center><font color=red><b>Mails are deleted <output name="arr[0]"></output></b></font></center></html>
				<jsp:include page="mainindex.jsp" />
	



	<%-- Enumeration en = request.getParameterNames();
                 
        while (en.hasMoreElements())
        {
           Object obj = en.nextElement();
      String fieldName = (String) obj;
      out.println(fieldName);             
			 }   
 --%>
	  
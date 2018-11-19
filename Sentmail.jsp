<%/*if (session.getValue("email") == null) {
               response.sendRedirect("index.html");  
}*/
%>
<%@ include file="Cache.jsp" %>
<table>
<tr><td colspan="2"><%@ include file="top.jsp" %></td></tr>
<tr><td><%@ include file="left.jsp" %></td>
<td valign="top"><%@ include file="Sent.jsp" %></td>
</tr>
</table>
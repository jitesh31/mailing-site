<%@ page import="java.sql.*"%>
	<%!
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	%>
	
	<%
		response.setContentType("text/html");
		
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		
		Cookie cookie = new Cookie ("uname",email);
		Cookie cookie1 = new Cookie ("upass",pass);
		 
		cookie.setMaxAge(365*24*60*60);
		cookie1.setMaxAge(365*24*60*60);
	 
		response.addCookie(cookie);
		response.addCookie(cookie1);
		
	
		boolean valid=false;
		try
		{
			 %>
			   <%@ include file="sql.jsp" %>
			   
			   <%
			  
			ps=con.prepareStatement("select email,pass from userdetails");
			rs=ps.executeQuery();
			while(rs.next())
			{
				if(email.equals(rs.getString("email")) && pass.equals(rs.getString("pass")))
				{
					
					valid=true;
					break;
				}
			}  
			if(valid)
			{     
				
				session.setAttribute("email",email);
				
			    %>
				
			  <jsp:forward page="mainindex.jsp" />			
		<%	}
			else
			{  %>
		        				<jsp:include page="index.jsp" />

				<html><font color=red><b>email or password entered wrong</b></font></html>
		<%
			}
		}
		catch(Exception e)
		{
			out.print(e);
		}
	%>
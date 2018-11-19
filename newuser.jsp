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
		   String address=request.getParameter("address");
		   String phone=request.getParameter("phone");
		   String username=request.getParameter("uname");
	
		   boolean valid=false;
		   try
		   {
			   %>
			     <%@ include file="sql.jsp" %>
			   
			   <%
			   
			   ps=con.prepareStatement("select email from userdetails");
			   rs=ps.executeQuery();

			   
			   while(rs.next())
			   {
				   if(email.equals(rs.getString("email")))
				   {
					   valid=true;
					   break;
				   }
			   }
			   if(valid)
			   {
				   %>
				   Email that you have entered is already exists
				   <jsp:include page="nu.html" />
				   
				<%   
				   }
			   else
			   {
				   ps=con.prepareStatement("insert into userdetails values(?, ?, ?, ?, ?)");
				   ps.setString(1,username);
				   ps.setString(2,email);
				   ps.setString(3,pass);
				   ps.setInt(4,Integer.parseInt(phone));
				   ps.setString(5,address);
				   ps.executeUpdate();
				   con.close();
				   response.sendRedirect("index.jsp");
				   
				   
			   }
		   }
		   catch(Exception e)
		   {
			   out.print(e);
		   }
	    %>
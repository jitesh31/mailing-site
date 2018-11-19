<%@ page import="java.sql.*"%>
<%! 
    Connection con;
	PreparedStatement ps;
	ResultSet rs;
   %>
   
  <%
  response.setContentType("text/html");
  String mid=request.getParameter("mid");
  String status="true";
  try{
	  %>
	  <%@ include file="sql.jsp"%>
	  <%
	  ps=con.prepareStatement("update messagedet set status=? where messid=?");
	  ps.setString(1,status);
	  ps.setInt(2,Integer.parseInt(mid));
	  ps.executeUpdate();
	  ps=con.prepareStatement("select * from messagedet");
	  rs=ps.executeQuery();
	
			
						
			while(rs.next())
			{
				if(mid.equals(rs.getInt("messid")))
				{
					out.print("lkjlsjdflsadf");
			
							}
			}
					
			
			
		}
		catch(Exception e)
		{
			out.print(e);
		}
	%>
	  
  
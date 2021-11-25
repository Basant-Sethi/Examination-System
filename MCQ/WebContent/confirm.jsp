<%@page import="java.sql.*" %>
<% 
String email=request.getParameter("e");
out.print(email);
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	PreparedStatement ps=con.prepareStatement("update regdata set status=? where email_id=?");
	ps.setString(1,"1");
	ps.setString(2,email);
	int i=ps.executeUpdate();
	if(i==1)
		response.setHeader("Refresh", "0;wait.jsp");
	con.close();

}
catch(Exception e){out.println(e);}
%>
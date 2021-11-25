<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Read Questions</title>

</head>
<body><center><%! int c=1; %>


<table>
<%
out.print("Question No."+c);
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	Statement st=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	ResultSet rs=st.executeQuery("Select * from question");
	//rs.beforeFirst()
	rs.absolute(c);
	//while(rs.next())
	{
		
		out.print("<tr><td><form action=readquestion.jsp>"+"</td></tr><td><textarea rows=5 cols=70 >"+rs.getString(1)+"</textarea></td><tr><td>Option1:"+rs.getString(2)+"</td></tr><tr><td>Option2:"
		+rs.getString(3)+"</td></tr><tr><td>Option3:"+rs.getString(4)+"</td></tr><tr><td>Option4:"+rs.getString(5)+"</td></tr>"+"<tr><td>Answer:"+rs.getString(6)+"</td></tr>");
		c=c+1;
	}
	
	con.close();
}catch(Exception e){
	if( c != 1){
	      
	         c=1;
	      response.sendRedirect("readquestion.jsp");
	    }
	}%>	
<tr><td><input type=submit value=Next></td>
<td><input type='button' value=Previous id=c onclick='window.history.back();'></td>

	



</table>
</form>
</center>
</body>
</html>
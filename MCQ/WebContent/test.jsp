<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Exam</title>

<script>
<!--
<%
String clock = request.getParameter( "clock" );
if( clock == null ) clock = "60";
%>
var timeout = <%=clock%>;
function timer()
{
if( --timeout > 0 )
{
document.forma.clock.value = timeout;
window.setTimeout( "timer()", 1000 );
}
else
{
document.forma.clock.value = "Time over";
///disable submit-button etc
location.reload(true);}
}
//-->
</script>

</head>
<body><%! int c=1; %>



<%

Integer result=(Integer)session.getAttribute("count");

try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	Statement st=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
	ResultSet rs=st.executeQuery("Select question,option1,option2,option3,option4 from question");
	
	//while(rs.next());
	rs.absolute(c);
	{
		out.print("<form action=testAction.jsp>QuestionNo:"+c+"<h3>"
				+rs.getString(1)+"</h3><input type=radio id=op1 name=ans value='"+rs.getString(2)+"'><label for=op1>"
				+rs.getString(2)+"</label><br><input type=radio id=op2 name=ans value='"+rs.getString(3)+"'><label for=op2>"
				+rs.getString(3)+"</label><br><input type=radio id=op3 name=ans value='"+rs.getString(4)+"'><label for=op3>"
				+rs.getString(4)+"</label><br><input type=radio id=op4 name=ans value='"+rs.getString(5)+"'><label for=op4>"
				+rs.getString(5)+"</label><br>");
		c=c+1;
	}
	out.print("<input type=submit value=Next></form>");
	con.close();
}catch(Exception e){	if( c != 1){
    
    c=1;
 response.sendRedirect("Result.jsp");
}}
%>	



<form action="<%=request.getRequestURL()%>" name="forma">
Seconds remaining: <input type="text" name="clock" value="<%=clock%>" style="border:0px solid white">
...
</form>
<script>
<!--
timer();
//-->
</script>



</body>
</html>
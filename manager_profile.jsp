<html>
	<body bgcolor="Azure" align = "center">
		<h1 align="center">Manager Home</h1>
		<br><br>
		<h3><a href = "manager_profile.jsp">Manager Profile</a>|
		    <a href = "index.html">Logout</a>|
		</h3>


<%@page import="java.sql.*" %>
<table width = "400" height = "100" border = "2" align = "center">
<tr><td>id</td><td>name</td><td>email</td><td>manager</td></tr>
<%
Connection con = null;
Class.forName("com.mysql.cj.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/employee";
String user="root";
String pass="root";
con=DriverManager.getConnection(url, user, pass);
int id = (Integer)session.getAttribute("id");
PreparedStatement ps = con.prepareStatement("select *from manager where id = ?");
ps.setInt(1,id);
ResultSet rs = ps.executeQuery();
while(rs.next()){
	%>
	<tr>
	<td><%=rs.getInt(1) %></td> <td><%=rs.getString(3) %></td><td> <%=rs.getString(4) %></td> <td><%=rs.getString(5)%></td>
	</tr>
<% }%>
</table>
</body>
</html>
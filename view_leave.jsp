<html>
	<body bgcolor="Azure" align = "center">
		<h1 align="center">Manager Home</h1>
		<br><br>
		<h3><a href = "manager_profile.jsp">Manager Profile</a>|
		    <a href = "index.html">Logout</a>|
		</h3>


<%@page import="java.sql.*" %>
<table width = "400" height = "100" border = "2" align = "center">
<tr><td>id</td><td>employee name</td><td>No of Leaves</td><td>Manager</td><td>Status</td><td>newstatus</td></tr>
<%
Connection con = null;
Class.forName("com.mysql.cj.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/employee";
String user="root";
String pass="root";
con=DriverManager.getConnection(url, user, pass);
String manager = (String)session.getAttribute("manager");
PreparedStatement ps = con.prepareStatement("select *from leaves where manager = ?");
ps.setString(1,manager);
ResultSet rs = ps.executeQuery();
while(rs.next()){
	%>
	<tr>
	<td><%=rs.getInt(1) %></td> <td><%=rs.getString("ename") %></td><td> <%=rs.getString("nleaves") %></td> <td><%=rs.getString("manager")%></td>
	<td><%=rs.getString("status")%></td><td><a href="granted.jsp?id=<%=rs.getInt(1)%>">grant</a></td></tr>
<% }%>
</table>
</body>
</html>
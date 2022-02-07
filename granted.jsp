<!DOCTYPE html>
<html>
<body bgcolor = "wheat">
<%@page import="java.sql.*" %>

<%
Connection con = null;
Class.forName("com.mysql.cj.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/employee";
String user="root";
String pass="root";
con=DriverManager.getConnection(url, user, pass);
String id = request.getParameter("id");
int eid = Integer.parseInt(id);
String mname = (String)session.getAttribute("name");
PreparedStatement ps = con.prepareStatement("update leaves set status = ? where eid = ? and nleaves <= 3");
ps.setString(1,"granted");
ps.setInt(2,eid);
int x = ps.executeUpdate();
if(x!=0){
   response.sendRedirect("view_leave.jsp");
}
else{
	   
	   ps = con.prepareStatement("update leaves set status = ? where eid = ? and nleaves > 3");
	   ps.setString(1,"Notgranted");
	   ps.setInt(2,eid);
	   int x2 = ps.executeUpdate();
	   if(x2!=0)
	      response.sendRedirect("view_leave.jsp");
}
	%>
	
   </body>
   </html>
   
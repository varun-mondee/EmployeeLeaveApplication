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
String ename=request.getParameter("ename");
String nleave = request.getParameter("nleaves");
String manager = request.getParameter("manager");
String sql = "insert into leaves(eid,ename,nleaves,status,manager) values(?,?,?,?,?)";
int eid = (Integer)session.getAttribute("eid");
System.out.println(eid);
PreparedStatement ps = con.prepareStatement(sql);
ps.setInt(1, eid);
ps.setString(2, ename);
ps.setString(3, nleave);
ps.setString(4, "checking");
ps.setString(5,manager);
int x = ps.executeUpdate();
if(x!=0){
	response.sendRedirect("leave_applied.jsp");
}
%>

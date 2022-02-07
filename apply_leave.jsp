<!DOCTYPE html>
<html>
<body bgcolor = "DarkSeaGreen">
<h1 align = "center"></h1>
<br><br><br><br>
<h1 align = "center"><a href = "apply_leave.jsp">Apply Leave</a></h1>
<h1 align = "center"><a href = "index.html">logout</a></h1>



		
		<form action="./employee_leave.jsp"  align="center">
		
		Employee Name : <input type="text" name="ename" placeholder="Enter Employee Name">
		Number Of Leaves:<input type="number" name="nleaves" placeholder="Enter Number of Leaves">
		Manager : <select name="manager">
			<option value="IT">IT</option>
			<option value="HR">HR</option>
			<option value="ProjectManager">Project Manager</option>
		</select><br><br>
		<input type="submit" value="Apply">
		</form>


</body>
</html>
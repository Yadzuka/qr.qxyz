<%@ page import="org.eustrosoft.contractpkg.Model.Members" %>
<%@ page import="java.io.File" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>
		Member's table
	</title>
	<link rel="stylesheet" type="text/css" href="css/webcss.css"/>
</head>
<body>

	<table class="memberstable" border="3">
		<tr>
			<td>Organization names</td>
		</tr>
	<%!
		// Set global parameters
		Members members = new Members(); // Use member's bean to taking all need information
		int counter = members.getCounterOfMembers(); // Counter of members
		String [] allRegisteredMembers = members.getCompanyNames(); // Get all members ( from existing directories )
	%>
	<%
		// Cycle for each member ( directory ) in the main (members) path
		for(int i =0; i < counter; i++) {
			// It also sets directory name in GET parameter
	%>
		<tr>
			<td>
				<a href="ranges.jsp?member=<%=allRegisteredMembers[i]%>">
					<%= allRegisteredMembers[i] %>
				</a>
			</td>
		</tr>
	<% } %>
	</table>
</body>
</html>
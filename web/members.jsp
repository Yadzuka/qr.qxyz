<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
    	<title>Members table</title>
	</head>
<body>
	<!--<!%		
		Members allMembers = new Members();
		
		String [] membersList = memb.getCompanyNames();
		
		int membersCounter = memberList.length;
		// Get counter of members
		
	%!>
	<jsp:useBean id ="members" scope="request" type="org.eustrosoft.contractpkg.Members"/>
	
	<div class = "memberstable">
		<table>
			<tr> 
				<td>Organization names</td>
			</tr>
			<%
				
				for(int i = 0; i< membersCounter ; i++){
			%>
				<tr>
					<td>${memberList[i]}</td>		 
				</tr>
				
			<% } %>
		</table>
	</div>
	
	<!-- <a href="update">Go to update</a> -->

</body>
</html>
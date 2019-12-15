<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="org.eustrosoft.contractpkg.Model.Contract" %>
<html>
<head>
    <title>Starting table</title>
</head>
<body>
	<%!
		Contract contract = new Contract();

	%>
    <h3>Products</h3>

    <table border="2">
   		<caption>Таблица товаров</caption>
   	<tr>
    	<td>QR Image</td>
    	<td>QR code</td>
    	<td>Contract</td>
  		<td>Contract date</td>
    	<td>Price</td>
   		<td>Supplier</td>
    	<td>Client</td>
    	<td>Production type</td>
    	<td>Model</td>
    	<td>Serial number</td>
    	<td>Production date</td>
 		<td>Delivery date</td>
    	<td>Sale date</td>
		<td>Departure date</td>
    	<td>Warranty start</td>
    	<td>Warranty end</td>
    	<td>Commentary</td>
   	</tr>
		<%
			for(int i = 0; i < 3; i++){

		%>

   		<tr>
   			<td>${contract.qrImg}</td>
    		<td>${contract.QR}</td>
    		<td>${contract.CONTRACTNUM}</td>
   	 		<td>${contract.contractdate}</td>
    		<td>${contract.MONEY}</td>
    		<td>${contract.SUPPLIER}</td>
    		<td>${contract.CLIENT}</td>
    		<td>${contract.PRODTYPE}</td>
    		<td>${contract.MODEL}</td>
    		<td>${contract.SN}</td>
    		<td>${contract.prodate}</td>
    		<td>${contract.shipdate}</td>
    		<td>${contract.SALEDATE}</td>
    		<td>${contract.DEPARTUREDATE}</td>
    		<td>${contract.WARRANTYSTART}</td>
    		<td>${contract.WARRANTYEND}</td>
    		<td>${contract.COMMENT}</td>
   		</tr>
		<%
			}
		%>
  	</table>

	<a href="update.jsp">Go to update</a>
	<a href="ranges.jsp?member=<%=request.getParameter("table")%>">Go back</a>
</body>
</html>
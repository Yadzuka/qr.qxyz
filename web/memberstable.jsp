<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="org.eustrosoft.contractpkg.Model.Contract" %>
<%@ page import="org.eustrosoft.contractpkg.Controller.QRCodeController" %>
<%@ page import="org.eustrosoft.contractpkg.Controller.QRcodeServlet" %>
<%@ page import="org.eustrosoft.contractpkg.Model.CreateQR" %>
<html>
<head>
    <title>Starting table</title>
</head>
<body>
	<%!
		QRCodeController qrController = new QRCodeController();
		Contract contract = new Contract();
		QRcodeServlet serv = new QRcodeServlet();
		CreateQR qr;
	%>

    <table border="2">
   		<caption><h3>Таблица товаров</h3></caption>
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
   			<td>
				<img src="engine/qr?range=<%=request.getParameter("range")%>"/>
			</td>
    		<td><a href="<%="http://qr.qxyz.ru?q="+request.getParameter("range")+"001"%>"/>site</td>
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
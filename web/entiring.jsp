<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Starting table</title>
</head>
<body>

	<div class = "membertable">
		<table>
			<jsp:useBean id ="members" scope="request" type="org.eustrosoft.contractpkg.Members"/>
			<tr> 
				<td>Organization names</td>
			</tr>
			<% %>
			<tr>
				<td>${members.companyName}</td>		 
			</tr>
			<% %>
		</table>
	</div>

<div>
<section>
    <h3>Suppliers table</h3>
    <jsp:useBean id="contract" scope="request" type="org.eustrosoft.contractpkg.Contract"/>
    <tr>
        <td>Name: ${contract.QR} | Serial number: ${contract.CONTRACTUM}</td>
        <td><img src="engine/qr"/></td>
        <td><a href="engine?action=update">Update</a></td>
    </tr>
    

    <table border="1">
   		<caption>Таблица поставщиков</caption>
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
  	</table>
</section>
</div>
	<<a href="update">Go to update</a>>

</body>
</html>
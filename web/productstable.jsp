<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="org.eustrosoft.contractpkg.Model.*" %>
<%@ page import="org.eustrosoft.contractpkg.Controller.*" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
    <title>Starting table</title>
    <link rel="stylesheet" type="text/css" href="css/webcss.css"/>
</head>
<body>
	<%
		ControllerContracts contractController = new ControllerContracts();
		ArrayList<Contract> availableContracts = contractController.getContracts();
		String member = request.getParameter("member");
		Contract bufferToPrintProperties;
		Contract bufferForComparison;
	%>

	<ul>
		<li><a href="update.jsp?action=create">Создать новую запись</a></li>
		<li><a href="ranges.jsp?member=<%=request.getParameter("member")%>">Назад</a></li>
	</ul>

	<table class="memberstable" border="2" width="60%">
   		<caption><h3>Таблица товаров</h3></caption>
   	<tr>
   		<td>Полная информация</td>
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
   	</tr>
		<%
			int firstCompositor;
			int secondCompositor;
			// Prints only last version of object
			for(int i = 0; i < availableContracts.size(); i++){

				bufferToPrintProperties = availableContracts.get(i);
				bufferForComparison = availableContracts.get(i);

				// Works with all ZOID objects
				for(int j = 0; j < availableContracts.size();j++){
					firstCompositor = Integer.parseInt(bufferToPrintProperties.getZOID());
					secondCompositor = Integer.parseInt(availableContracts.get(j).getZOID());

					if(firstCompositor != secondCompositor)
						continue;

					firstCompositor = Integer.parseInt(bufferToPrintProperties.getZVER());
					secondCompositor = Integer.parseInt(availableContracts.get(j).getZVER());

					if(firstCompositor < secondCompositor) {
						bufferToPrintProperties = availableContracts.get(j);
					}
				}

				firstCompositor = Integer.parseInt(bufferForComparison.getZVER());
				secondCompositor = Integer.parseInt(bufferToPrintProperties.getZVER());
				if(firstCompositor < secondCompositor)
					continue;
		%>
		
   		<tr>
   			<td>
   				<a href="productview.jsp?member=<%=request.getParameter("member")%>
   				&range=<%=request.getParameter("range")%>&contract=<%=i%>">
   					Просмотр
   				</a>
   			</td>
   			<td>
				<img src="engine/qr?codingString=<%=bufferToPrintProperties.getQr()%>"/>
			</td>
    		<td>
    			<a href = "<%="http://qr.qxyz.ru/?q="+bufferToPrintProperties.getQr()%>">
				<%="http://qr.qxyz.ru/?q="+bufferToPrintProperties.getQr()%>
				</a>
			</td>
   	 		<td><%=bufferToPrintProperties.getContractum()%></td>
    		<td><%=bufferToPrintProperties.getContractdate()%></td>
    		<td><%=bufferToPrintProperties.getMoney()%></td>
    		<td><%=bufferToPrintProperties.getSUPPLIER()%></td>
			<td><%=bufferToPrintProperties.getCLIENT()%></td>
			<td><%=bufferToPrintProperties.getPRODTYPE()%></td>
			<td><%=bufferToPrintProperties.getMODEL()%></td>
			<td><%=bufferToPrintProperties.getSN()%></td>
   		</tr>
		<%
			}
		%>
  	</table>
</body>
</html>
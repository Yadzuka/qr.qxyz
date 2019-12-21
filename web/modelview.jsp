<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="org.eustrosoft.contractpkg.Controller.ControllerContracts" %>
<%@ page import="org.eustrosoft.contractpkg.Model.Contract" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
    <title>Update</title>
</head>
<body>
<%
	String tableParam = request.getParameter("table"); 
	String rangeParam = rangeParam = request.getParameter("range");
	String contractParam = request.getParameter("contractum");
	int parsedContractParam = Integer.parseInt(contractParam);
	
	ControllerContracts contractController = new ControllerContracts();
	Contract bufferToShowModel = contractController.getContract(parsedContractParam);
%>
		<table>
	   		<tr>
	   			<td>Картинка qr: </td>
				<td>
					<img src="engine/qr?codingString=<%=bufferToShowModel.getQr()%>"/>
				</td>
			</tr>
    		<tr>
    			<td>Ссылка: </td>
    			<td>
    				<a target="_" href="<%="http://qr.qxyz.ru/?q="+bufferToShowModel.getQr()%>">
						<%="http://qr.qxyz.ru/?q="+bufferToShowModel.getQr()%>
					</a>
				</td>
			</tr>
   	 		<tr>
   	 			<td>Контракт: </td>
   	 			<td><%=bufferToShowModel.getContractum()%></td>
   	 		</tr>
   	 		   	<td>Дата контракта: </td>
   	 			<td><%=bufferToShowModel.getContractdate()%></td>
   	 		</tr>
   	 		<tr>
   	 			<td>Сумма: </td>
   	 			<td><%=bufferToShowModel.getMoney()%></td>
   	 		</tr>
   	 		<tr>
   	 			<td>Поставщик: </td>
   	 			<td><%=bufferToShowModel.getSUPPLIER()%></td>
   	 		</tr>
   	 		<tr>
   	 			<td>Клиент: </td>
   	 			<td><%=bufferToShowModel.getCLIENT()%></td>
   	 		</tr>
   	 		<tr>
   	 			<td>Тип продукта: </td>
   	 			<td><%=bufferToShowModel.getPRODTYPE()%></td>
   	 		</tr>
   	 		<tr>
   	 			<td>Модель: </td>
   	 			<td><%=bufferToShowModel.getMODEL()%></td>
   	 		</tr>
   	 		<tr>
   	 			<td>Номер серии: </td>
   	 			<td><%=bufferToShowModel.getSN()%></td>
   	 		</tr>
   	 		<tr>
   	 			<td>Дата изготовления: </td>
   	 			<td><%=bufferToShowModel.getProdate()%></td>
   	 		</tr>
   	 		<tr>
   	 			<td>Дата привоза: </td>
   	 			<td><%=bufferToShowModel.getShipdate()%></td>
   	 		</tr>
   	 		<tr>
   	 			<td>Дата продажи: </td>
   	 			<td><%=bufferToShowModel.getSALEDATE()%></td>
   	 		</tr>
   	 		<tr>
   	 			<td>Дата отсыла: </td>
   	 			<td><%=bufferToShowModel.getDEPARTUREDATE()%></td>
   	 		</tr>
   	 		<tr>
   	 			<td>Начало гарантии: </td>
   	 			<td><%=bufferToShowModel.getWARRANTYSTART()%></td>
   	 		</tr>
   	 		<tr>
   	 			<td>Конец гарантии: </td>
   	 			<td><%=bufferToShowModel.getWARRANTYEND()%></td>
   	 		</tr>
   	 		<tr>
   	 			<td>Комментарий: </td>
   	 			<td><%=bufferToShowModel.getCOMMENT()%></td>
   	 		</tr>
   	 	</table>
    <a href="memberstable.jsp?table=<%=tableParam%>&range=<%=rangeParam%>">
    	Назад
    </a>&nbsp;
    <a href="update.jsp?member=<%=tableParam%>&range=<%=rangeParam%>&zoid=<%=contractParam%>&action=edit">
    	Изменить запись
    </a>
</body>
</html>

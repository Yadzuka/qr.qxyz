<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="org.eustrosoft.contractpkg.Controller.ControllerContract"%>
<%@ page import="org.eustrosoft.contractpkg.Controller.ControllerContract" %>
<%@ page import="org.eustrosoft.contractpkg.Model.Contract" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
	<title>
		Update record
	</title>
</head>
<body>
	<%
		String tableParam = request.getParameter("table"); 
		String rangeParam = rangeParam = request.getParameter("range");
		String contractParam = request.getParameter("contractum");
		int parsedContractParam = Integer.parseInt(contractParam);
		
		int parsedContractParam = Integer.parseInt(contractParam);
		ControllerContract contractController = new ControllerContract();
		Contract bufferToShowModel = contractController.getContract(parsedContractParam);
		
		StringBuffer finalStringToSendForm = "";
	%>
	
	<h1> Изменить запись </h1>

		<dl>
   	 		<dt>Контракт: </dt>
   	 		<dt><input type="text" name="name" value="${bot.name}" placeholder="<%=bufferToShowModel.getContractum()%>" /></dt>
   	 	</dl>
   	 		<dt>Дата контракта: </dt>
   	 		<dt><input type="text" name="name" value="${bot.name}" placeholder="<%=bufferToShowModel.getContractdate()%>" /></dt>
   	 	</dl>
   	 	<dl>
   	 		<dt>Сумма: </dt>
   	 		<dt><input type="text" name="name" value="${bot.name}" placeholder="<%=bufferToShowModel.getMoney()%>" /></dt>
   	 	</dl>
   	 	<dl>
   	 		<dt>Поставщик: </dt>
   	 		<dt><input type="text" name="name" value="${bot.name}" placeholder="<%=bufferToShowModel.getSUPPLIER()%>" /></dt>
   	 	</dl>
   	 	<dl>
   	 		<dt>Клиент: </dt>
   	 		<dt><input type="text" name="name" value="${bot.name}" placeholder="<%=bufferToShowModel.getCLIENT()%>" /></dt>
   	 	</dl>
   	 	<dl>
   	 		<dt>Тип продукта: </dt>
   	 		<dt><input type="text" name="name" value="${bot.name}" placeholder="<%=bufferToShowModel.getPRODTYPE()%>" /></dt>
   	 	</dl>
   	 	<dl>
   	 		<dt>Модель: </dt>
   	 		<dt><input type="text" name="name" value="${bot.name}" placeholder="<%=bufferToShowModel.getMONEY()%>" /></dt>
   	 	</dl>
   	 	<dl>
   	 		<dt>Номер серии: </dt>
   	 		<dt><input type="text" name="name" value="${bot.name}" placeholder="<%=bufferToShowModel.getSN()%>" /></dt>
   	 	</dl>
   	 	<dl>
   	 		<dt>Дата изготовления: </dt>
   	 		<dt><input type="text" name="name" value="${bot.name}" placeholder="<%=bufferToShowModel.getProdate()%>" /></dt>
   	 	</dl>
   	 	<dl>
   	 		<dt>Дата привоза: </dt>
   	 		<dt><input type="text" name="name" value="${bot.name}" placeholder="<%=bufferToShowModel.getShipdate()%>" /></dt>
   	 	</dl>
   	 	<dl>
   	 		<dt>Дата продажи: </dt>
   	 		<dt><input type="text" name="name" value="${bot.name}" placeholder="<%=bufferToShowModel.getSALEDATE()%>" /></dt>
   	 	</dl>
   	 	<dl>
   	 		<dt>Дата отсыла: </dt>
   	 		<dt><input type="text" name="name" value="${bot.name}" placeholder="<%=bufferToShowModel.getDEPARTUREDATE()%>" /></dt>
   	 	</dl>
   	 	<dl>
   	 		<dt>Начало гарантии: </dt>
   	 		<dt><input type="text" name="name" value="${bot.name}" placeholder="<%=bufferToShowModel.getWARRANTYSTART()%>" /></dt>
   	 	</dl>
   	 	<dl>
   	 		<dt>Конец гарантии: </dt>
   	 		<dt><input type="text" name="name" value="${bot.name}" placeholder="<%=bufferToShowModel.getWARRANTYEND()%>" /></dt>
   	 	</dl>
   	 	<dl>
   	 		<dt>Комментарий: </dt>
   	 		<dt><input type="text" name="name" value="${bot.name}" placeholder="<%=bufferToShowModel.getCOMMENT()%>" /></dt>
   	 	</dl>
		<button context="Применить">
		
			<%
				Contract newContract = Contract.InitNewRecordInDB(
					finalStringToSendForm, ';', bufferToShowModel.getZOID, 
							(bufferToShowModel.getZVER+1),"yadzuka", "N");
			%>
		</button>

	<%
	
		// Correction level
		
		/*
		
		*/
	%>
	
</body>
</html>
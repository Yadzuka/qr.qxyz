<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="org.eustrosoft.contractpkg.Controller.ControllerContract"%>
<%@ page import="org.eustrosoft.contractpkg.Controller.ControllerContract" %>
<%@ page import="org.eustrosoft.contractpkg.Model.Contract" %>
<%@ page import="java.util.ArrayList" %>
<%!
public final String ACTION_EDIT="edit";
public final String ACTION_CREATE="create";
public final String ACTION_SAVE="save";
public final String ACTION_REFRESH="refresh";
public final String ACTIONS[] = {ACTION_EDIT,ACTION_CREATE,ACTION_SAVE,ACTION_REFRESH};
// buttons
public final String BTN_EDIT=ACTION_EDIT;
public final String BTN_CREATE="create";
public final String BTN_SAVE="save";
public final String BTN_REFRESH="refresh";
public final String BTN_CANCEL="cancel";


%>
<html>
<head>
	<title>
		Update record
	</title>
</head>
<body>
	<%
		String tableParam = request.getParameter("table");
		String action = request.getParameter("action");
		String rangeParam = rangeParam = request.getParameter("range");
		String contractParam = request.getParameter("contractum");
		int parsedContractParam = Integer.parseInt(contractParam);
		Contract bufferToShowModel = new Contract();

		ControllerContract contractController = new ControllerContract();
		if(request.getParameter(BTN_EDIT)) action="edit";
		if(request.getParameter(BTN_CREATE)) action=ACTION_CREATE;
		if(request.getParameter(BTN_SAVE)) action=ACTION_SAVE;
		if(request.getParameter(BTN_REFRESH)) action=ACTION_REFRESH;
		// if action not in ACTIONS[] action=null
			//..
		//default action
		if(action == null) action="edit"; //edit, create, save, refresh
		if(ACTION_CANCEL.equals(action)){
		 //response.sendRedirection();
		}
 		if(ACTION_EDIT.equals(action)){
		  bufferToShowModel = contractController.getContract(parsedContractParam);
		}
 		if(ACTION_REFRESH.equals(action) || ACTION_SAVE.equals(action)){
 		// STD_HEADER fields
 		 bufferToShowModel.setZOID(request.getParameter("ZOID"));
 		 bufferToShowModel.setZVER(request.getParameter("ZVER"));
 		 		 
 		// data fields
 		 bufferToShowModel.setQr(request.getParameter("Qr"));
bufferToShowModel.setContractum(request.getParameter("Contractum"));
bufferToShowModel.setContractdate(request.getParameter("Contractdate"));
bufferToShowModel.setMoney(request.getParameter("Money"));
bufferToShowModel.setSUPPLIER(request.getParameter("SUPPLIER"));
bufferToShowModel.setCLIENT(request.getParameter("CLIENT"));
bufferToShowModel.setPRODTYPE(request.getParameter("PRODTYPE"));
bufferToShowModel.setMODEL(request.getParameter("MODEL"));
bufferToShowModel.setSN(request.getParameter("SN"));
bufferToShowModel.setProdate(request.getParameter("Prodate"));
bufferToShowModel.setShipdate(request.getParameter("Shipdate"));
bufferToShowModel.setSALEDATE(request.getParameter("SALEDATE"));
bufferToShowModel.setDEPARTUREDATE(request.getParameter("DEPARTUREDATE"));
bufferToShowModel.setWARRANTYSTART(request.getParameter("WARRANTYSTART"));
bufferToShowModel.setWARRANTYEND(request.getParameter("WARRANTYEND"));
bufferToShowModel.setCOMMENT(request.getParameter("COMMENT"));

 		}
 		if(ACTION_SAVE.equals(action)){
 		}
		
		
	%>
	
	<h1> Изменить запись </h1>
	<form action="update.jsp?member=<% %>&range=<>&ZOID=<>&action=save" method="POST">
	<input type="submit" name="save" value="Сохранить">
	<input type="submit" name="refresh" value="Обновить">
	<input type="submit" name="cancel" value="Отмена">
	
		<input type="hidden" name="ZOID" value="<%=bufferToShowModel.getZOID()%>">
		<input type="hidden" name="ZVER" value="<%=bufferToShowModel.getZVER()%>">

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
   	 			<td><input name="contractnum" value="<%=bufferToShowModel.getContractum()%>"></td>
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
		<button >
			Reset
			<%--
				Contract newContract = Contract.InitNewRecordInDB(
					finalStringToSendForm, ';', bufferToShowModel.getZOID, 
							(bufferToShowModel.getZVER+1),"yadzuka", "N");
			--%>
		</button>
		<button>
			Update
		</button>
		<button>
			Cancel
		</button>
		</form>

	<%
	
		// Correction level
		
		/*
		
		*/
	%>
	
</body>
</html>
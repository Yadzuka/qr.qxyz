<%@ 
	page contentType="text/html; charset=UTF-8" 
	import="org.eustrosoft.contractpkg.Controller.ControllerContract" 
	import="org.eustrosoft.contractpkg.Model.Contract" 
	import="java.util.*" 
%>
<%!
	// Actions that may be invoked
	public final String ACTION_EDIT = "edit";
	public final String ACTION_CREATE = "create";
	public final String ACTION_SAVE = "save";
	public final String ACTION_REFRESH = "refresh";
	public final String ACTION_CANCEL = "cancel";
	public final String [] ACTIONS = {ACTION_EDIT,ACTION_CREATE,ACTION_SAVE,ACTION_REFRESH, ACTION_CANCEL};
	
	// buttons
	public final String BTN_EDIT = ACTION_EDIT;
	public final String BTN_CREATE = ACTION_CREATE;	
	public final String BTN_SAVE = ACTION_SAVE;
	public final String BTN_REFRESH = ACTION_REFRESH;
	public final String BTN_CANCEL = ACTION_CANCEL;
	public final String [] BUTTONS = {BTN_EDIT, BTN_CREATE, BTN_SAVE, BTN_REFRESH, BTN_CANCEL};
	
	// NULL CONSTANT
	public final String SZ_NULL = "null";
%>
<html>
<head>
	<title>
		Update record
	</title>
</head>
<body>
<div>
<a href="/Contracts-1.0-SNAPSHOT/">go home
</a>
</div>

<%
// From psql.jsp
 long enter_time = System.currentTimeMillis();
 long expire_time = enter_time + 24*60*60*1000;
 response.setHeader("Cache-Control","No-cache");
 response.setHeader("Pragma","no-cache");
 response.setDateHeader("Expires",expire_time);
 request.setCharacterEncoding("UTF-8");
// 

String memberParam = request.getParameter("member");
String rangeParam = request.getParameter("range");
String zoidParam = request.getParameter("zoid");
String action = request.getParameter("action");
int parsedContractParam = Integer.parseInt(zoidParam);
Contract bufferToShowModel = new Contract();


ControllerContract contractController = new ControllerContract();
ArrayList<Contract> contractsArray = contractController.getContracts();

	if(request.getParameter(BTN_EDIT) != null) action = ACTION_EDIT;
	if(request.getParameter(BTN_CREATE) != null) action = ACTION_CREATE;
	if(request.getParameter(BTN_SAVE) != null) action = ACTION_SAVE;
	if(request.getParameter(BTN_REFRESH) != null) action = ACTION_REFRESH;
	if(!Arrays.asList(ACTIONS).contains(action))action=null;
		//..
	//default action
	if(action == null) action="edit"; //edit, create, save, refresh
	if(ACTION_CANCEL.equals(action)){
		 //response.sendRedirection();
		 response.sendRedirect
		 ("/update.jsp?member="+memberParam+"&range="
		 +rangeParam+
		 "&zoid="+zoidParam+"&action=edit");
		 //.forward(request, response);
	}
 	if(ACTION_EDIT.equals(action)){
	  bufferToShowModel = contractController.getContract(parsedContractParam);
	}
 	if(ACTION_REFRESH.equals(action) || ACTION_SAVE.equals(action)){
 	out.println(bufferToShowModel.toString());
 	// STD_HEADER fields
	bufferToShowModel.setZOID(request.getParameter("ZOID"));
	bufferToShowModel.setZVER(request.getParameter("ZVER"));
	bufferToShowModel.setZDATE(new Date().toString());
	bufferToShowModel.setZUID("yadzuka");
	bufferToShowModel.setZSTA("N");	 
 	// data fields
 	bufferToShowModel.setQr(request.getParameter("Qr"));
	bufferToShowModel.setContractum(request.getParameter("member"));
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
 	if(ACTION_CREATE.equals(action) || ACTION_SAVE.equals(action)){
 	  if(SZ_NULL.equals(bufferToShowModel.getZOID()) ||  bufferToShowModel.getZOID() == null){ 
 	  Integer buffer = Integer.parseInt(contractsArray.get(contractsArray.size()-1).getZOID());
 	  buffer++;
 	  bufferToShowModel.setZOID(buffer.toString());
 	  }
 	  if(SZ_NULL.equals(bufferToShowModel.getZVER()) ||  bufferToShowModel.getZVER() == null) 
 	  { bufferToShowModel.setZVER("1"); }
 	  else {
 	   Integer index = Integer.parseInt(bufferToShowModel.getZVER()) + 1;
 	   bufferToShowModel.setZVER(index.toString());
 	  }
 	  
 	  bufferToShowModel.createRecordInDB(bufferToShowModel.toString());
 	  out.println(bufferToShowModel.toString());
 	}
 		
	%>
<h1> Изменить запись </h1>
	
<form action="update.jsp?member=<%=memberParam%>&range=<%=rangeParam%>&zoid=<%=zoidParam%>&action=<%=action%>" method="POST">
	
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
   	 			<td><input name="member" value="<%=bufferToShowModel.getContractum()%>"></td>
   	 		</tr>
   	 		   	<td>Дата контракта: </td>
   	 			<td><input name="Contractdate" value="<%=bufferToShowModel.getContractdate()%>"></td>
   	 		</tr>
   	 		<tr>
   	 			<td>Сумма: </td>
   	 			<td><input name="Money" value="<%=bufferToShowModel.getMoney()%>"></td>
   	 		</tr>
   	 		<tr>
   	 			<td>Поставщик: </td>
   	 			<td><input name="SUPPLIER" value="<%=bufferToShowModel.getSUPPLIER()%>"></td>
   	 		</tr>
   	 		<tr>
   	 			<td>Клиент: </td>
   	 			<td><input name="CLIENT" value="<%=bufferToShowModel.getCLIENT()%>"></td>
   	 		</tr>
   	 		<tr>
   	 			<td>Тип продукта: </td>
   	 			<td><input name="PRODTYPE" value="<%=bufferToShowModel.getPRODTYPE()%>"></td>
   	 		</tr>
   	 		<tr>
   	 			<td>Модель: </td>
   	 			<td><input name="MODEL" value="<%=bufferToShowModel.getMODEL()%>"></td>
   	 		</tr>
   	 		<tr>
   	 			<td>Номер серии: </td>
   	 			<td><input name="SN" value="<%=bufferToShowModel.getSN()%>"></td>
   	 		</tr>
   	 		<tr>
   	 			<td>Дата изготовления: </td>
   	 			<td><input name="Prodate" value="<%=bufferToShowModel.getProdate()%>"></td>
   	 		</tr>
   	 		<tr>
   	 			<td>Дата привоза: </td>
   	 			<td><input name="Shipdate" value="<%=bufferToShowModel.getShipdate()%>"></td>
   	 		</tr>
   	 		<tr>
   	 			<td>Дата продажи: </td>
   	 			<td><input name="SALEDATE" value="<%=bufferToShowModel.getSALEDATE()%>"></td>
   	 		</tr>
   	 		<tr>
   	 			<td>Дата отсыла: </td>
   	 			<td><input name="DEPARTUREDATE" value="<%=bufferToShowModel.getDEPARTUREDATE()%>"></td>
   	 		</tr>
   	 		<tr>
   	 			<td>Начало гарантии: </td>
   	 			<td><input name="WARRANTYSTART" value="<%=bufferToShowModel.getWARRANTYSTART()%>"></td>
   	 		</tr>
   	 		<tr>
   	 			<td>Конец гарантии: </td>
   	 			<td><input name="WARRANTYEND" value="<%=bufferToShowModel.getWARRANTYEND()%>"></td>
   	 		</tr>
   	 		<tr>
   	 			<td>Комментарий: </td>
   	 			<td><input name="COMMENT" value="<%=bufferToShowModel.getCOMMENT()%>"></td>
   	 		</tr>
   	 	</table>
</form>

	<%
	
		// Correction level
		
		/*
		
		*/
	%>
<!-- Привет this is just for UTF-8 testing (must be russian word "Privet") -->	
</body>
</html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="org.eustrosoft.contractpkg.Controller.ControllerContract"%>
<%@ page import="org.eustrosoft.contractpkg.Controller.ControllerContract" %>
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
	ControllerContract contractController = new ControllerContract();
	Contract bufferToShowModel = contractController.getContract(parsedContractParam);
%>
<section>
		
	   		<dl>
	   			<dt>Картинка qr: </dt>
				<dt>
					<img src="engine/qr?codingString=<%=bufferToShowModel.getQr()%>"/>
				</dt>
			</dl>
    		<dl>
    			<dt>Ссылка: </dt>
    			<dt>
    				<a href = "<%="http://qr.qxyz.ru/?q="+bufferToShowModel.getQr()%>">
						<%="http://qr.qxyz.ru/?q="+bufferToShowModel.getQr()%>
					</a>
				</dt>
			</dl>
   	 		<dl>
   	 			<dt>Контракт: </dt>
   	 			<dt><%=bufferToShowModel.getContractum()%></dt>
   	 		</dl>
   	 		   	<dt>Дата контракта: </dt>
   	 			<dt><%=bufferToShowModel.getContractdate()%></dt>
   	 		</dl>
   	 		<dl>
   	 			<dt>Сумма: </dt>
   	 			<dt><%=bufferToShowModel.getMoney()%></dt>
   	 		</dl>
   	 		<dl>
   	 			<dt>Поставщик: </dt>
   	 			<dt><%=bufferToShowModel.getSUPPLIER()%></dt>
   	 		</dl>
   	 		<dl>
   	 			<dt>Клиент: </dt>
   	 			<dt><%=bufferToShowModel.getCLIENT()%></dt>
   	 		</dl>
   	 		<dl>
   	 			<dt>Тип продукта: </dt>
   	 			<dt><%=bufferToShowModel.getPRODTYPE()%></dt>
   	 		</dl>
   	 		<dl>
   	 			<dt>Модель: </dt>
   	 			<dt><%=bufferToShowModel.getMODEL()%></dt>
   	 		</dl>
   	 		<dl>
   	 			<dt>Номер серии: </dt>
   	 			<dt><%=bufferToShowModel.getSN()%></dt>
   	 		</dl>
   	 		<dl>
   	 			<dt>Дата изготовления: </dt>
   	 			<dt><%=bufferToShowModel.getProdate()%></dt>
   	 		</dl>
   	 		<dl>
   	 			<dt>Дата привоза: </dt>
   	 			<dt><%=bufferToShowModel.getShipdate()%></dt>
   	 		</dl>
   	 		<dl>
   	 			<dt>Дата продажи: </dt>
   	 			<dt><%=bufferToShowModel.getSALEDATE()%></dt>
   	 		</dl>
   	 		<dl>
   	 			<dt>Дата отсыла: </dt>
   	 			<dt><%=bufferToShowModel.getDEPARTUREDATE()%></dt>
   	 		</dl>
   	 		<dl>
   	 			<dt>Начало гарантии: </dt>
   	 			<dt><%=bufferToShowModel.getWARRANTYSTART()%></dt>
   	 		</dl>
   	 		<dl>
   	 			<dt>Конец гарантии: </dt>
   	 			<dt><%=bufferToShowModel.getWARRANTYEND()%></dt>
   	 		</dl>
   	 		<dl>
   	 			<dt>Комментарий: </dt>
   	 			<dt><%=bufferToShowModel.getCOMMENT()%></dt>
   	 		</dl>
	<!--
    <form method="post" action="memberstable.jsp?action=submit">
        <dl>
            <dt>Client name: </dt>
            <dd><input type="text" name="clientname"  /></dd>
        </dl>
        <dl>
            <dt>Contract date: </dt>
            <dd><input type="text" name="contractdate"  /></dd>
        </dl>
        <dl>
            <dt>Contract: </dt>
            <dd><input type="text" name="contractum"  /></dd>
        </dl>
        <dl>
            <dt>Departure: </dt>
            <dd><input type="text" name="departure"  /></dd>
        </dl>
        <dl>
            <dt>Model: </dt>
            <dd><input type="text" name="model"  /></dd>
        </dl>
        <dl>
            <dt>Prod date: </dt>
            <dd><input type="text" name="prodate"  /></dd>
        </dl>
        <dl>
            <dt>Prod type: </dt>
            <dd><input type="text" name="prodtype" " /></dd>
        </dl>
        <dl>
            <dt>Serial number: </dt>
            <dd><input type="text" name="sn"  /></dd>
        </dl>
        <dl>
            <dt>Sale date: </dt>
            <dd><input type="text" name="saledate"  /></dd>
        </dl>
        <dl>
            <dt>Money: </dt>
            <dd><input type="text" name="money"  /></dd>
        </dl>
        <dl>
            <dt>Supplier: </dt>
            <dd><input type="text" name="supplier"  /></dd>
        </dl>
        <dl>
            <dt>Ship date: </dt>
            <dd><input type="text" name="shipdate" /></dd>
        </dl>
        <dl>
            <dt>Warranty start: </dt>
            <dd><input type="text" name="warrstart"  /></dd>
        </dl>
        <dl>
            <dt>Warranty end: </dt>
            <dd><input type="text" name="warrend"  /></dd>
        </dl>

        <dl>
            <dt>Commentary: </dt>
            <dd><input type="text" name="commentary"  /></dd>
        </dl>
        <button type="submit">Save</button>
    </form>
    -->
    <a href="memberstable.jsp?table=<%=tableParam%>&range=<%=rangeParam%>">
    	Назад
    </a>
    <a href="update.jsp?table=<%=tableParam%>&range=<%=rangeParam%>&contractum=<%=contractParam%>">
    	Изменить запись
    </a>
</section>
</body>
</html>

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
	String []goBackParameters = { 
	request.getParameter("table"),
	request.getParameter("range")};
		
	String reqNumForRecord = request.getParameter("contractum");
	int contractIdInAllContracts = Integer.parseInt(reqNumForRecord);

	ControllerContract contractController = new ControllerContract();
	//ArrayList<Contract> availableContracts = contractController.getContracts();
	Contract showingContract = contractController.getContract(contractIdInAllContracts);
%>
<section>
		
	   		<dl>
	   			<dt>QR CODE IMAGE: </dt>
				<dt>
					<img src="engine/qr?codingString=<%=showingContract.getQr()%>"/>
				</dt>
			</dl>
    		<dl>
    			<dt>QR CODE REFERENCE: </dt>
    			<dt>
    				<a href = "<%="http://qr.qxyz.ru/?q="+showingContract.getQr()%>">
						<%="http://qr.qxyz.ru/?q="+showingContract.getQr()%>
					</a>
				</dt>
			</dl>
   	 		<dl>
   	 			<dt>CONTRACT: </dt>
   	 			<dt><%=showingContract.getContractum()%></dt>
   	 		</dl>
   	 		   	<dt>CONTRACT DATE: </dt>
   	 			<dt><%=showingContract.getContractdate()%></dt>
   	 		</dl>
   	 		<dl>
   	 			<dt>AMOUNT OF MONEY: </dt>
   	 			<dt><%=showingContract.getMoney()%></dt>
   	 		</dl>
   	 		<dl>
   	 			<dt>SUPPLIER: </dt>
   	 			<dt><%=showingContract.getSUPPLIER()%></dt>
   	 		</dl>
   	 		<dl>
   	 			<dt>CLIENT: </dt>
   	 			<dt><%=showingContract.getCLIENT()%></dt>
   	 		</dl>
   	 		<dl>
   	 			<dt>PRODUCTION TYPE: </dt>
   	 			<dt><%=showingContract.getPRODTYPE()%></dt>
   	 		</dl>
   	 		<dl>
   	 			<dt>MODEL: </dt>
   	 			<dt><%=showingContract.getMODEL()%></dt>
   	 		</dl>
   	 		<dl>
   	 			<dt>SERIAL NUMBER: </dt>
   	 			<dt><%=showingContract.getSN()%></dt>
   	 		</dl>
   	 		<dl>
   	 			<dt>PRODUCTION DATE: </dt>
   	 			<dt><%=showingContract.getProdate()%></dt>
   	 		</dl>
   	 		<dl>
   	 			<dt>DELIVER DATE: </dt>
   	 			<dt><%=showingContract.getShipdate()%></dt>
   	 		</dl>
   	 		<dl>
   	 			<dt>SALE DATE: </dt>
   	 			<dt><%=showingContract.getSALEDATE()%></dt>
   	 		</dl>
   	 		<dl>
   	 			<dt>DEPARTURE DATE: </dt>
   	 			<dt><%=showingContract.getDEPARTUREDATE()%></dt>
   	 		</dl>
   	 		<dl>
   	 			<dt>WARRANTY START DATE: </dt>
   	 			<dt><%=showingContract.getWARRANTYSTART()%></dt>
   	 		</dl>
   	 		<dl>
   	 			<dt>WARRANTY END DATE: </dt>
   	 			<dt><%=showingContract.getWARRANTYEND()%></dt>
   	 		</dl>
   	 		<dl>
   	 			<dt>COMMENT: </dt>
   	 			<dt><%=showingContract.getCOMMENT()%></dt>
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
    <a href="memberstable.jsp?table=<%=goBackParameters[0]%>&range=<%=goBackParameters[1]%>">
    back
    </a>
</section>
</body>
</html>

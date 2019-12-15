<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update</title>
</head>
<body>
<section>
    <jsp:useBean id="contract" scope="request" class="org.eustrosoft.contractpkg.Model.Contract"/>
    <form method="post" action="memberstable.jsp?action=submit">
        <dl>
            <dt>Client name: </dt>
            <dd><input type="text" name="clientname" value="${contract.CLIENT}" placeholder="${contract.CLIENT}" /></dd>
        </dl>
        <dl>
            <dt>Contract date: </dt>
            <dd><input type="text" name="contractdate" value="${contract.contractdate}" placeholder="${contract.contractdate}" /></dd>
        </dl>
        <dl>
            <dt>Contractum: </dt>
            <dd><input type="text" name="contractum" value="${contract.contractum}" placeholder="${contract.contractum}" /></dd>
        </dl>
        <dl>
            <dt>Departure: </dt>
            <dd><input type="text" name="departure" value="${contract.DEPARTUREDATE}" placeholder="${contract.DEPARTUREDATE}" /></dd>
        </dl>
        <dl>
            <dt>Model: </dt>
            <dd><input type="text" name="model" value="${contract.MODEL}" placeholder="${contract.MODEL}" /></dd>
        </dl>
        <dl>
            <dt>Prod date: </dt>
            <dd><input type="text" name="prodate" value="${contract.prodate}" placeholder="${contract.prodate}" /></dd>
        </dl>
        <dl>
            <dt>Prod type: </dt>
            <dd><input type="text" name="prodtype" value="${contract.PRODTYPE}" placeholder="${contract.PRODTYPE}" /></dd>
        </dl>
        <dl>
            <dt>Serial number: </dt>
            <dd><input type="text" name="sn" value="${contract.SN}" placeholder="${contract.SN}" /></dd>
        </dl>
        <dl>
            <dt>Sale date: </dt>
            <dd><input type="text" name="saledate" value="${contract.SALEDATE}" placeholder="${contract.SALEDATE}" /></dd>
        </dl>
        <dl>
            <dt>Money: </dt>
            <dd><input type="text" name="money" value="${contract.money}" placeholder="${contract.money}" /></dd>
        </dl>
        <dl>
            <dt>Supplier: </dt>
            <dd><input type="text" name="supplier" value="${contract.SUPPLIER}" placeholder="${contract.SUPPLIER}" /></dd>
        </dl>
        <dl>
            <dt>Ship date: </dt>
            <dd><input type="text" name="shipdate" value="${contract.shipdate}" placeholder="${contract.shipdate}" /></dd>
        </dl>
        <dl>
            <dt>Warranty start: </dt>
            <dd><input type="text" name="warrstart" value="${contract.WARRANTYSTART}" placeholder="${contract.WARRANTYSTART}" /></dd>
        </dl>
        <dl>
            <dt>Warranty end: </dt>
            <dd><input type="text" name="warrend" value="${contract.WARRANTYEND}" placeholder="${contract.WARRANTYEND}" /></dd>
        </dl>

        <dl>
            <dt>Commentary: </dt>
            <dd><input type="text" name="commentary" value="${contract.COMMENT}" placeholder="${contract.COMMENT}" /></dd>
        </dl>
        <button type="submit">Save</button>
    </form>
</section>
</body>
</html>

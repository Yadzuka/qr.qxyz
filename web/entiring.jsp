<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Starting table</title>
</head>
<body>
<section>
    <h3>Suppliers table</h3>
    <jsp:useBean id="engine" scope="request" type="org.eustrosoft.pack.Engine"/>
    <tr>
        <td>Name: ${engine.name} | Serial number: ${engine.serial}</td>
        <td><img src="engine/qr"/></td>
        <td><a href="engine?action=update">Update</a></td>
    </tr>
    <table border="1">
   		<caption>Таблица поставщиков</caption>
   	<tr>
    		<th>qrImg</th>
    		<th>qr</th>
    		<th>pType</th>
    		<th>model</th>
    		<th>sn</th>
    		<th>pDate</th>
    		<th>shipDate</th>
    		<th>wStart</th>
    		<th>wEnd</th>
    		<th>contract</th>
    		<th>client</th>
    		<th>sold</th>
   	</tr>
   		<tr><td>${engine.qrImg}</td><td>${engine.qr}</td><td>${engine.pType}</td><td>23</td></tr>
  	</table>
</section>
</body>
</html>
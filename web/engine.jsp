<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Engine</title>
</head>
<body>
<section>
    <h3>Engine info</h3>
    <jsp:useBean id="engine" scope="request" type="ru.eustrosoft.pack.Engine"/>
    <tr>
        <td>Name: ${engine.name} | Serial number: ${engine.serial}</td>
        <td><img src="engine/qr"/></td>
        <td><a href="engine?action=update">Update</a></td>
    </tr>
</section>
</body>
</html>
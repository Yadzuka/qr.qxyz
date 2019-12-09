<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update</title>
</head>
<body>
<section>
    <jsp:useBean id="engine" scope="request" type="ru.eustrosoft.pack.Engine"/>
    <form method="post" action="engine?action=submit">
        <dl>
            <dt>Name: </dt>
            <dd><input type="text" name="name" value="${engine.name}" placeholder="${engine.name}" /></dd>
        </dl>
        <dl>
            <dt>Serial number: </dt>
            <dd><input type="number" name="serial" value="${engine.serial}" placeholder="${engine.serial}" /></dd>
        </dl>
        <button type="submit">Save</button>
    </form>
</section>
</body>
</html>

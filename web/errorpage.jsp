<%--
  Created by IntelliJ IDEA.
  User: yadzuka
  Date: 22.12.2019
  Time: 19:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    There was ba some error! May be searching page does not exists?
    <%
        out.println(exception.getMessage());
    %>
</body>
</html>

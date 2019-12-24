<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="errorpage.jsp" %>
<%@ page import="java.io.*" %>
<%@ page import="org.eustrosoft.contractpkg.Controller.RangesController" %>
<html>
<head>

    <%
        String f = request.getParameter("member"); // I think that's bad practice
    %>
    <title><%=f%> ranges</title>
</head>
<body>
    <!-- I think that's better -->
    <%
        RangesController rController = new RangesController(response.getWriter(),f);
        rController.getInfo();
    %>
        <table>
        <tr>
            <td>
                Ranges
            </td>
        </tr>
        <tr>
            <td>
                <!-- Go to table with old context to get info about -->
                <a href="productstable.jsp?member=<%=f%>&range=<%="0100D"%>">
                    <%="0100D"%>
                </a>
            </td>
        </tr>
    </table>
    <!-- Go back to table -->
    <a href="members.jsp">
        Назад
    </a>

</span>

</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <!-- PREVIOUS (BAD) VARIANT WITHOUT USING CONTROLLER! -->
    <%--<%!
        // Global parameters for read *.html and ranges
        Ranges r = new Ranges();
        File pathToRanges;
        File pathToCSV;
        File[] allDirectories;
        PrintWriter pw;
        BufferedReader reader;

        StringBuilder sb;
        String pathToHtml;
        String bufferForWriting = "";
        String pathToQR = "";

    %>
    <%
        // Set paths and initialize variables
        pathToRanges = new File("E:\\AllProjects\\Java_projects\\Sources\\" +
                "Java_product_projects\\qr.qxyz\\db\\members\\" + f + "\\");
        pathToCSV = new File(pathToRanges.getAbsolutePath() + "\\0100D\\master.list.csv");
        allDirectories = pathToRanges.listFiles();
        sb = new StringBuilder();
        response.setCharacterEncoding("UTF-8"); // Doesnt work correctly (??)
        pw = new PrintWriter(response.getWriter());

        // If finding *.html - read it
        for (int i = 0; i < allDirectories.length; i++) {
            if (allDirectories[i].getName().endsWith("html")) {

                pathToHtml = allDirectories[i].getAbsolutePath();
                reader = new BufferedReader(new FileReader(new File(pathToHtml)));

                while ((bufferForWriting = reader.readLine()) != null) {
                    sb.append(bufferForWriting);
                }
                pw.println(sb.toString());
            }

            // Future variant with non-static link to csv (db) file
            /*if(allDirectories[i].isDirectory() && allDirectories[i].getName() != "global") {
                pathToQR = allDirectories[i].getAbsolutePath();
                File qrDirectoryCode = new File(pathToQR);
                File [] filesInQRDirectory = qrDirectoryCode.listFiles();
                for(int j =0; j < filesInQRDirectory.length; j++){
                    if(filesInQRDirectory[j].isDirectory())
                        pathToQR += filesInQRDirectory[i];*/
        }
    %>--%>

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
                <a href="memberstable.jsp?table=<%=f%>&range=<%="0100D"%>">
                    <%="0100D"%>
                </a>
            </td>
        </tr>
    </table>
    <!-- Go back to table -->
    <a href="members.jsp">
        Go back!
    </a>

</span>

</body>
</html>

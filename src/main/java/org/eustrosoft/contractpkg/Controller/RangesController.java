package org.eustrosoft.contractpkg.Controller;

import java.io.*;
import java.nio.charset.StandardCharsets;

/*
    Ranges controller to manage ranges system
 */
public class RangesController {

    File pathToRanges;
    File pathToCSV;
    File[] allDirectories;
    PrintWriter printWriter;
    BufferedReader bufferedReader;

    StringBuilder sb;
    String pathToHtml;
    String bufferForWriting = "";

    // Set paths and initialize variables
    public RangesController(PrintWriter printWriter, String context){
        pathToRanges = new File("/home/yadzuka/workspace/Java_projects/qr.qxyz/db/members/" + context + "/");
        pathToCSV = new File(pathToRanges.getAbsolutePath() + "/0100D/master.list.csv");
        allDirectories = pathToRanges.listFiles();
        sb = new StringBuilder();
        this.printWriter = printWriter;
    }

    public String getInfo() throws IOException {
        // If finding *.html - read it
        for (int i = 0; i < allDirectories.length; i++) {
            if (allDirectories[i].getName().endsWith("html")) {

                pathToHtml = allDirectories[i].getAbsolutePath();
                bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(pathToHtml),
                                                        StandardCharsets.UTF_8));

                while ((bufferForWriting = bufferedReader.readLine()) != null) {
                    sb.append(bufferForWriting);
                }
                printWriter.println(sb.toString());
            }
        }
        bufferForWriting = printWriter.toString();

        // PRINT WRITER CLOSES IN JSP! BUFFERED READER AS WELL!
        return bufferForWriting;
    }
}

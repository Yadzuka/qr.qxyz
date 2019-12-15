package org.eustrosoft.contractpkg.Controller;

import java.io.*;

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
        pathToRanges = new File("E:\\AllProjects\\Java_projects\\Sources\\" +
                    "Java_product_projects\\qr.qxyz\\db\\members\\" + context + "\\");
        pathToCSV = new File(pathToRanges.getAbsolutePath() + "\\0100D\\master.list.csv");
        allDirectories = pathToRanges.listFiles();
        sb = new StringBuilder();
        this.printWriter = printWriter;

    }

    public String getInfo() throws IOException {
        // If finding *.html - read it
        for (int i = 0; i < allDirectories.length; i++) {
            if (allDirectories[i].getName().endsWith("html")) {

                pathToHtml = allDirectories[i].getAbsolutePath();
                bufferedReader = new BufferedReader(new FileReader(new File(pathToHtml)));

                while ((bufferForWriting = bufferedReader.readLine()) != null) {
                    sb.append(bufferForWriting);
                }
                printWriter.println(sb.toString());
            }
        }
        bufferForWriting = printWriter.toString();

        // PRINT WRITER CLOSES IN JSP! BUFFERED READER AS WELL!
        return bufferForWriting;

        // Future variant with non-static link to csv (db) file
            /*if(allDirectories[i].isDirectory() && allDirectories[i].getName() != "global") {
                pathToQR = allDirectories[i].getAbsolutePath();
                File qrDirectoryCode = new File(pathToQR);
                File [] filesInQRDirectory = qrDirectoryCode.listFiles();
                for(int j =0; j < filesInQRDirectory.length; j++){
                    if(filesInQRDirectory[j].isDirectory())
                        pathToQR += filesInQRDirectory[i];*/

    }
}

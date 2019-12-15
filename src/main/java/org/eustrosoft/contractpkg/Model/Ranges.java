package org.eustrosoft.contractpkg.Model;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.PrintWriter;
import java.util.regex.Pattern;

/*
    Ranges ( ALPHA NOW ) // Working with static folder name (0100D)
 */
public class Ranges {

    // Global parameters for all folders
    File pathToRanges;
    File pathToCSV;
    File [] allDirectories;

    public Ranges(){

    }

    // Range getter
    public String getOneRange(String pathName){

        // Set paths and initialize variables
        pathToRanges = new File("E:\\AllProjects\\Java_projects\\Sources\\" +
                "Java_product_projects\\qr.qxyz\\db\\members\\" + pathName +"\\");
        pathToCSV = new File(pathToRanges.getAbsolutePath() + "\\0100D");
        allDirectories  = pathToRanges.listFiles();

        if(!pathToCSV.exists()) {
            return null;
        }
        else
            return getRange(pathToCSV.getAbsolutePath());
    }

    // Splitter for folder name
    private String getRange(String way){
        String [] paths = way.split(Pattern.quote("\\"));

        return paths[paths.length-1];
    }

}

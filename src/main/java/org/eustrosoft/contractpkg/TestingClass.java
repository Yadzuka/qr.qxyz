package org.eustrosoft.contractpkg;

import java.io.*;
/*
	Testing class for all of capabilities
 */
class TestingClass {

    public static void main(String[] args) throws IOException {
        try(FileWriter writer = new FileWriter("E:\\AllProjects\\Java_projects\\Sources\\Java_product_projects" +
                "\\qr.qxyz\\db\\members\\EXAMPLESD\\0100D\\master.list.csv",true)){
            String str = "2;1;2019-12-11 16:33;denis2211;N;0100D001;ds2010-01;2011-01-01;MONEY;ООО Доминатор-Сервис;Alexey(boatclub.ru);"+
            "TDME;490;SN-012344;2009-12-05 China;2010-09-10 SPB;2010-09-17 MSK;2010-09-18 depa;2010-09-18 WSTART;2011-09-18 WEND;MA125,3:1,гидравлический";

            writer.write(str);

            writer.flush();
        }

    }
}
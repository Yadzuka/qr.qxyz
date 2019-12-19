package org.eustrosoft.contractpkg;


import org.eustrosoft.contractpkg.Model.*;
/*
	Testing class for all of capabilities
 */
class TestingClass {

    public static void main(String[] args) {
    	Contract c = new Contract();
    	c.createRecordInDB("Hello!");
    }
}
package org.eustrosoft.contractpkg;


import org.eustrosoft.contractpkg.Model.Members;

/*
	Testing class for all of capabilities
 */
class TestingClass {

    public static void main(String[] args) {
        Members member = new Members();
        int counter = member.getMembersCounter();
        String [] members = member.getCompanyNames();
        System.out.println(counter);
        for(String s : members){
            System.out.println(s);
        }
    }
}
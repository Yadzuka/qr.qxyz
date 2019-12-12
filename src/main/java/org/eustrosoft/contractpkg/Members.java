package org.eustrosoft.contractpkg;

import java.io.File;

public class Members {

	private String companyNames [];
	private File directories;
	private File [] listOfMembers;
	
	public Members() {
		
		
	}


	private int getCounterOfMembers() {
		directories = new File("db/members/");
		listOfMembers = directories.listFiles();
		companyNames = new String[listOfMembers.length];
		
		return listOfMembers.length;
	}


	public String[] getCompanyNames() {
		
		System.out.println("You are in getCompanyNames!");
		
		for(int i = 0; i < getCounterOfMembers(); i++) {
			companyNames[i] = listOfMembers[i].getName();
			System.out.println(companyNames[i]);
		}
		return companyNames;
	}


	public void setCompanyNames(String companyNames[]) {
		this.companyNames = companyNames;
	}
	
}

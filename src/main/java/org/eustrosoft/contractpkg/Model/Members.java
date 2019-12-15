package org.eustrosoft.contractpkg.Model;

import java.io.File;

/*
	Class witch contains list of members
 */
public class Members {

	// Global parameters to get existing members
	private String companyNames [];
	private File directories;
	private File [] listOfMembers;

	// Constructor to set capacity of company names
	public Members() {
		companyNames = new String[getCounterOfMembers()];
	}

	// Set member's counter
	public int getCounterOfMembers() {
		directories = new File("E:\\AllProjects\\Java_projects\\Sources" +
				                         "\\Java_product_projects\\qr.qxyz\\db\\members");
		listOfMembers = directories.listFiles();
		
		return listOfMembers.length;
	}

	// Get company names from companyNames variable
	public String[] getCompanyNames() {
		for(int i = 0; i < getCounterOfMembers(); i++) {
			companyNames[i] = listOfMembers[i].getName();
		}
		return companyNames;
	}

	// Private parameter to set company name (optional)
	private void setCompanyNames(String companyNames[]) {
		this.companyNames = companyNames;
	}
}

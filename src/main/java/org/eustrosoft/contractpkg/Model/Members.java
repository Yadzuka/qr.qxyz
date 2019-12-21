package org.eustrosoft.contractpkg.Model;

import java.io.File;

/*
	Class witch contains list of members
 */
public class Members {

	// Global parameters to get existing members
	private String [] companyNames;
	private File [] listOfMembers;
	private int membersCounter;

	// Constructor to set capacity of company names
	public Members() {

	}

	// Set member's counter
	/*public int getCounterOfMembers() {
		String absolutePathToMembers = new File("db/members/").getAbsolutePath();
		File directories = new File(absolutePathToMembers);
		listOfMembers = directories.listFiles();

		assert listOfMembers != null;
		return listOfMembers.length;
	}

	// Get company names from companyNames variable
	public String[] getCompanyNames() {
		for(int i = 0; i < getCounterOfMembers(); i++) {
			companyNames[i] = listOfMembers[i].getName();
		}
		return companyNames;
	}*/
	public String [] getCompanyNames(){

		String buffFile = new File("db/members/").getAbsolutePath();
		listOfMembers = new File("/home/yadzuka/workspace/Java_projects/qr.qxyz/db/members").listFiles();

		assert listOfMembers != null;

		membersCounter = listOfMembers.length;
		companyNames = new String[membersCounter];

		for(int i = 0; i < membersCounter; i++){
			companyNames[i] = listOfMembers[i].getName();
		}

		return companyNames;
	}
	// Private parameter to set company name (optional)
	private void setCompanyNames(String [] companyNames) {
		this.companyNames = companyNames;
	}

	public int getMembersCounter() {
		return membersCounter;
	}

	public void setMembersCounter(int membersCounter) {
		this.membersCounter = membersCounter;
	}
}

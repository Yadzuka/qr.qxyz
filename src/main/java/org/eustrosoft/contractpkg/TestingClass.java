package org.eustrosoft.contractpkg;

public class TestingClass {

	public static void main(String[] args) {
		System.out.println("Hello!");
		
		Members memb = new Members();
		
		String  members = memb.getCompanyNames() == null ? "null" : "not null";
		
		System.out.print(members);

	}

}

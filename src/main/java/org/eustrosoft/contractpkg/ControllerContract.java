package org.eustrosoft.contractpkg;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.LinkedList;

class ControllerContract {

	private static BufferedReader reader;
	private static LinkedList<Contract> listOfContract;
	private static String [] massiveOfParams;
	
	public ControllerContract() throws NumberFormatException, IOException {
		
		setListOfContract(new LinkedList<Contract>());
		InitializeContracts();
	}
	
	// Dictionary initializer
	private void InitializeContracts() throws NumberFormatException, IOException {
		reader = new BufferedReader(new FileReader
				("/db/members/EXAMPLESD/0100D/master.list.csv"));
		String stringForLine="";
		
		while((stringForLine = reader.readLine()) != null) {
			massiveOfParams = stringForLine.split(";");
			getListOfContract().add(new Contract(massiveOfParams));
		}
	}

	public LinkedList<Contract> getListOfContract() {
		return listOfContract;
	}

	public void setListOfContract(LinkedList<Contract> listOfContract) {
		this.listOfContract = listOfContract;
	}
}

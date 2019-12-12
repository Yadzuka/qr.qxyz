package org.eustrosoft.pack;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.LinkedList;

class ControllerContract {

	private BufferedReader reader;
	private LinkedList<Contract> listOfContract;
	
	public ControllerContract() throws NumberFormatException, IOException {
		
		setListOfContract(new LinkedList<Contract>());
		InitializeContracts();
	}
	
	
	
	// Dictionary initializer
	private void InitializeContracts() throws NumberFormatException, IOException {
		reader = new BufferedReader(new FileReader
				("/db/members/EXAMPLESD/0100D/001/master.list.csv"));
		String stringForLine="";
		String [] massiveOfParams;
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

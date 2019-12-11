package org.eustrosoft.pack;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;

public class Contract {

	private String [] parametrs;
	private BufferedReader reader;
	private static int counter = 0;
	private String bufferedString;
	
	public Contract(String [] par){
		
		
		
		
	}
	
	private String [] readLine(int line) throws FileNotFoundException {
		reader = new BufferedReader(new FileReader
				("/db/members/EXAMPLESD/0100D/001/master.list.csv"));
		while(counter!=line)
	    	bufferedString = reader.readLine();
		if(
		    
			(bufferedString = reader.readLine()) != null) {
			
		}
		
		
		return new String[];
	}
	
	////////////////////////
	//       TIS          //
    ////////////////////////
	private String ZOID;
	private String ZVER;
	private String ZDATE;
	private String ZUID;
	private String ZSTA;
	
    ////////////////////////
    //       Model        //
    ///////////////////////
    private CreateQR qrImg;
    
    private String QR;
    private String CONTRACTNUM;
    private String contractdate;
    private String MONEY;
    private String SUPPLIER;
    private String CLIENT;
    private String PRODTYPE;
    private String MODEL;
    private String SN;
    private String prodate;
    private String shipdate;
    private String SALEDATE;
    private String DEPARTUREDATE;
    private String WARRANTYSTART;
    private String WARRANTYEND;
    private String COMMENT;
    
    ////////////////////////

    // QR Number in db
  	public String getQr() {
  		return QR;
  	}

  	public void setQr(String qr) {
  		this.QR = qr;
  	}
  	
  	// Contract reference
  	public String getContractum() {
  		return CONTRACTNUM;
  	}

  	public void setPtype(String contractum) {
  		this.CONTRACTNUM = contractum;
  	}
  	
  	//  Contract date
  	public String getContractdate() {
  		return contractdate;
  	}

  	public void setContractdate(String contractdate) {
  		this.contractdate = contractdate;
  	}

  	// Count of money
  	public String getMoney() {
  		return MONEY;
  	}

  	public void setMoney(String money) {
  		this.MONEY = money;
  	}

  	//  Supplier
  	public String getSUPPLIER() {
		return SUPPLIER;
	}

	public void setSUPPLIER(String sUPPLIER) {
		SUPPLIER = sUPPLIER;
	}

	//  Client 
	public String getCLIENT() {
		return CLIENT;
	}

	public void setCLIENT(String cLIENT) {
		CLIENT = cLIENT;
	}

	//  Product type
	public String getPRODTYPE() {
		return PRODTYPE;
	}

	public void setPRODTYPE(String pRODTYPE) {
		PRODTYPE = pRODTYPE;
	}

	//  Model
	public String getMODEL() {
		return MODEL;
	}

	public void setMODEL(String mODEL) {
		MODEL = mODEL;
	}

	//  Serial number
	public String getSN() {
		return SN;
	}

	public void setSN(String sN) {
		SN = sN;
	}

	//  Product date
	public String getProdate() {
		return prodate;
	}

	public void setProdate(String prodate) {
		this.prodate = prodate;
	}
  	
	//  Ship/Delivery date
  	public String getShipdate() {
  		return shipdate;
  	}

  	public void setShipdate(String shipdate) {
  		this.shipdate = shipdate;
  	}
  	
  	//  Sale date
  	public String getSALEDATE() {
		return SALEDATE;
	}

	public void setSALEDATE(String sALEDATE) {
		SALEDATE = sALEDATE;
	}

	// Departure date
	public String getDEPARTUREDATE() {
		return DEPARTUREDATE;
	}

	public void setDEPARTUREDATE(String dEPARTUREDATE) {
		DEPARTUREDATE = dEPARTUREDATE;
	}

	//  Warranty period start
	public String getWARRANTYSTART() {
		return WARRANTYSTART;
	}

	public void setWARRANTYSTART(String wARRANTYSTART) {
		WARRANTYSTART = wARRANTYSTART;
	}

	// Warranty period end
	public String getWARRANTYEND() {
		return WARRANTYEND;
	}

	public void setWARRANTYEND(String wARRANTYEND) {
		WARRANTYEND = wARRANTYEND;
	}

	//  Commentary to deal
	public String getCOMMENT() {
		return COMMENT;
	}

	public void setCOMMENT(String cOMMENT) {
		COMMENT = cOMMENT;
	}

	//  QR image
  	public CreateQR getQrImg() {
  		return qrImg;
  	}

  	public void setQrImg(CreateQR qrImg) {
  		this.qrImg = qrImg;
  	}
  	
  	@Override
  	public String toString() {
  		return QR;
  	}
  	
  	////////////////////////////////
  	//            TIS             //
  	////////////////////////////////

	public String getZOID() {
		return ZOID;
	}

	public String getZVER() {
		return ZVER;
	}

	public String getZDATE() {
		return ZDATE;
	}

	public String getZSTA() {
		return ZSTA;
	}

	public String getZUID() {
		return ZUID;
	}
	
	////////////////////////////////
	
}

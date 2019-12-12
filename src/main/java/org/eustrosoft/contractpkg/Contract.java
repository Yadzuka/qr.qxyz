package org.eustrosoft.contractpkg;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.Dictionary;
import org.eustrosoft.pack.*;

public class Contract {

	private BufferedReader reader;
	private Dictionary<Integer,String []> dictOfParameters;
	private String [] paramsOfString;
	
	//Constructors
	public Contract(String [] par) throws NumberFormatException, IOException{
		
	}
	
	public Contract() throws NumberFormatException, IOException {
		InitializeDictionary();
	}
	
	public Contract(Dictionary<Integer, String> par) {
		
		paramsOfString = massiveOfData();
		
		for(int i = 0; i < paramsOfString.length; i++) {
			paramsOfString[i] = 
					((par.get(i) == null) ? null : par.get(i));
		}
		
	}
	
	public void setParam(String paramert,int index) {
		paramsOfString[index] = paramert;
	}
	public String getParam(int index) {
		return paramsOfString[index];
	}
	
	private String [] massiveOfData() {
		
		return new String[]{
			this.ZOID,this.ZVER,this.ZDATE,
			this.ZUID,this.ZSTA,this.QR,
			this.CONTRACTNUM,
			this.contractdate,
			this.MONEY,this.SUPPLIER,
			this.CLIENT,this.PRODTYPE,this.MODEL,
			this.SN,this.prodate,this.shipdate,
			this.SALEDATE,this.DEPARTUREDATE,
			this.WARRANTYSTART,this.WARRANTYEND,
			this.COMMENT,
		};
		
	}
	
	//Getters for line/all dictionary
	private String [] getLine(int line){
		return dictOfParameters.get(line);
	}
	private Dictionary<Integer,String[]> getAll(){
		return dictOfParameters;
	}
	
	// Dictionary initializer
	private void InitializeDictionary() throws NumberFormatException, IOException {
		reader = new BufferedReader(new FileReader
				("/db/members/EXAMPLESD/0100D/001/master.list.csv"));
		String stringForLine="";
		String [] massiveOfParams;
		while((stringForLine = reader.readLine()) != null) {
			massiveOfParams = stringForLine.split(";");
			dictOfParameters.put(Integer.parseInt(massiveOfParams[0]),massiveOfParams);
		}
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
    ////////////////////////
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

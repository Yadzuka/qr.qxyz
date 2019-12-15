package org.eustrosoft.contractpkg.Model;


import java.io.*;
import java.util.ArrayList;
import java.util.Dictionary;
import java.util.List;
import java.util.Vector;

/*
	Class witch contains all of needed to DOMINATOR company parameters
 */
public class Contract {

	Vector vec;

	public Contract(String [] str){
		vec = new Vector();

	}




	/*
	// Global parameters to save product info
	private BufferedReader reader;
	Vector<String> infoMassiveForOneContract;

	// Getter ( for a while here)
	public Vector<String> getVector(){
		return infoMassiveForOneContract;
	}
	public void setParam(int index, String s){
		massiveOfParams()[index] = s;

	}
	//Constructors
	public Contract(String[] par){
		this();
		initializeMassive(par);
	}
	
	public Contract(){
		infoMassiveForOneContract = new Vector<>();
	}

	private void initializeMassive(String [] par){
		try {
			//infoMassiveForOneContract = new Vector<>(21);
			for (int i = 0; i < par.length; i++) {
				setParam(i, par[i]);
				//infoMassiveForOneContract.add(par[i]);
			}
			for (int i = par.length - 1; i < 21; i++) {
				setParam(i, "null");
				//infoMassiveForOneContract.add(null);
			}
		}catch(ArrayIndexOutOfBoundsException ex){
			ex.printStackTrace();
		}catch (Exception ex){
			ex.printStackTrace();
		}

	}

	private String [] massiveOfParams(){
		String [] f = new String[]{
				this.ZOID, this.ZVER, this.ZDATE, this.ZUID, this.ZSTA,
				this.QR, this.CONTRACTNUM, this.contractdate,
				this.MONEY, this.SUPPLIER, this.CLIENT, this.PRODTYPE,
				this.MODEL, this.SN, this.prodate, this.shipdate, this.SALEDATE,
				this.DEPARTUREDATE, this.WARRANTYSTART, this.WARRANTYEND, this.COMMENT};
		return f;
	}
	// ArrayList initializer
	/*public ArrayList<Contract> Initialize() throws NumberFormatException, IOException {
		ArrayList<Contract> startingList = new ArrayList<>();

		reader = new BufferedReader(new FileReader
				("E:\\AllProjects\\Java_projects\\Sources\\Java_product_projects\\" +
						"qr.qxyz\\db\\members\\EXAMPLESD\\0100D\\master.list.csv"));
		String stringForLine="";
		String [] massiveOfParams = new String [21];
		while((stringForLine = reader.readLine()) != null) {
			if(stringForLine.startsWith("#"))
				continue;
			else{
				startingList.add(new Contract(stringForLine.split(";")));
			}
		}
		return startingList;
	}*/
	
	////////////////////////
	//       TIS          //
    ////////////////////////
	/*
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

  		return null;
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
	*/
	////////////////////////////////
	
}

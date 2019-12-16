package org.eustrosoft.contractpkg.Model;


import java.io.*;
import java.nio.charset.StandardCharsets;
import java.util.*;

/*
	Class witch contains all of needed to DOMINATOR company parameters
 */
public class Contract {

    // Global parameters for initialize form
    String[] productProperties;
    BufferedReader reader;
    String pathToDBFile;

	// Initializer for class
	public static Contract InitDBFromFile() {
        return new Contract();
    }

    public static Contract InitNewRecordInDB(String comingString, char splitter){
	    return new Contract(comingString, splitter);
    }

    // Private constructors to init class inside
    private Contract(){
    	pathToDBFile = "E:\\AllProjects\\Java_projects\\Sources\\Java_product_projects\\" +
				       "qr.qxyz\\db\\members\\EXAMPLESD\\0100D\\master.list.csv";
    	setProductPropertiesLength(pathToDBFile);
	}

    private Contract(String inputStringToDB,char splitter){
        this();
        splitComingString(inputStringToDB,splitter);
        matchPropertiesWithMassive(productProperties);
    }

    private Contract(String[] initialProps){
    	this();
    	readFromDBFile(initialProps);
    	matchPropertiesWithMassive(productProperties);
	}

	private Contract(String[] str, String pathToFile) {
    	this();
		setProductPropertiesLength(pathToFile);
	}

    private Contract(String pathToFile) {
    	this();
        setProductPropertiesLength(pathToFile);
    }

    // Get length of parameters || MAY BE USED TO INITIALIZE ANOTHER DB || (FUTURE)
    private void setProductPropertiesLength(String pathToDBFile) {
        String sBufferToGetProps;
        int finalLengthOfProps = 0;
        try {
            reader = new BufferedReader(new InputStreamReader(new FileInputStream(pathToDBFile),
                                                            StandardCharsets.UTF_8)/*new FileReader(pathToDBFile)*/);
            if ((sBufferToGetProps = reader.readLine()) != null)
                finalLengthOfProps = sBufferToGetProps.split(";").length;
            productProperties = new String[finalLengthOfProps];
        } catch (IOException ex) {
            ex.printStackTrace();
        }finally {
        	try{
        	    reader.close();
        	}catch (IOException ex){
        		ex.printStackTrace();
			}
		}
    }

    // Fill starting array list with existing records in file
    public ArrayList<Contract> fillProductPropertiesInStart() throws NumberFormatException, IOException {
        ArrayList<Contract> startingList = new ArrayList<>();
		try {
			reader = new BufferedReader(new InputStreamReader(new FileInputStream(pathToDBFile),
                                        StandardCharsets.UTF_8));
			String stringForLine = "";
			while ((stringForLine = reader.readLine()) != null) {
				if (stringForLine.startsWith("#"))
					continue;
				else {
					startingList.add(new Contract(stringForLine.split(";")));
				}
			}
			return startingList;
		}
        finally {
			try{
				reader.close();
			}catch (IOException ex){
				ex.printStackTrace();
			}
		}
    }

    private void readFromDBFile(String [] props){
    	if(props.length > productProperties.length) {
			System.out.println("Properties length is more than product properties length!");
			return;
		}
    	for(int i=0;i<props.length;i++){
    		productProperties[i] = props[i];
		}
	}

	private void splitComingString(String comingString, char splitter){
	    String [] bufferForSplitterString = comingString.split(String.valueOf(splitter));

	    for(int i=0;i< bufferForSplitterString.length ;i++)
	        productProperties[i+5] = bufferForSplitterString[i];

	    matchPropertiesWithMassive(productProperties);

	    this.ZOID = "1";
	    this.ZVER = "1";
	    this.ZDATE = new Date().toString();
	    this.ZUID = "1";
	    this.ZSTA = "1";
    }

	private void matchPropertiesWithMassive(String [] productProperties) {
        ZOID = productProperties[0];
        ZVER = productProperties[1];
        ZDATE = productProperties[2];
        ZUID = productProperties[3];
        ZSTA = productProperties[4];
        QR = productProperties[5];
        CONTRACTNUM = productProperties[6];
        contractdate = productProperties[7];
        MONEY = productProperties[8];
        SUPPLIER = productProperties[9];
        CLIENT = productProperties[10];
        PRODTYPE = productProperties[11];
        MODEL = productProperties[12];
        SN = productProperties[13];
        prodate = productProperties[14];
        shipdate = productProperties[15];
        SALEDATE = productProperties[16];
        DEPARTUREDATE = productProperties[17];
        WARRANTYSTART = productProperties[18];
        WARRANTYEND = productProperties[19];
        COMMENT = productProperties[20];
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
*/
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

    private String ZOID;
    private String ZVER;
    private String ZDATE;
    private String ZUID;
    private String ZSTA;

    ////////////////////////
    //       Model        //
    ////////////////////////

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

    ////////////////////////////////

}

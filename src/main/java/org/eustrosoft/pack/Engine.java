package org.eustrosoft.pack;

import javax.imageio.ImageIO;
import java.awt.*;
import java.io.FileOutputStream;

public class Engine {
	
    private String name;
    private String serial;
    
    ////////////////////////
    private String qr;
    private CreateQR qrImg;
    private String ptype;
    private String model;
    private String sn;
    private String pdate;
    private String shipdate;
    private String wstart;
    private String wend;
    private String contract;
    private String client;
    private String sold;
    ////////////////////////
    
    private static Engine ourInstance = new Engine();
    public static Engine getInstance() {
        return ourInstance;
    }

    private Engine() {
    }

    public Engine(String name, String serial) {
        this.name = name;
        this.serial = serial;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSerial() {
        return serial;
    }

    public void setSerial(String serial) {
        this.serial = serial;
    }
    
    @Override
    public String toString() {
        return "Engine{" +
                ", name='" + name + '\'' +
                ", serial=" + serial +
                '}';
    }

    ///////////////////////
	public String getQr() {
		return qr;
	}

	public void setQr(String qr) {
		this.qr = qr;
	}

	public String getPtype() {
		return ptype;
	}

	public void setPtype(String ptype) {
		this.ptype = ptype;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public String getSn() {
		return sn;
	}

	public void setSn(String sn) {
		this.sn = sn;
	}

	public String getPdate() {
		return pdate;
	}

	public void setPdate(String pdate) {
		this.pdate = pdate;
	}

	public String getShipdate() {
		return shipdate;
	}

	public void setShipdate(String shipdate) {
		this.shipdate = shipdate;
	}

	public String getWstart() {
		return wstart;
	}

	public void setWstart(String wstart) {
		this.wstart = wstart;
	}

	public String getWend() {
		return wend;
	}

	public void setWend(String wend) {
		this.wend = wend;
	}

	public String getContract() {
		return contract;
	}

	public void setContract(String contract) {
		this.contract = contract;
	}

	public String getClient() {
		return client;
	}

	public void setClient(String client) {
		this.client = client;
	}

	public String getSold() {
		return sold;
	}

	public void setSold(String sold) {
		this.sold = sold;
	}
	

	public CreateQR getQrImg() {
		return qrImg;
	}

	public void setQrImg(CreateQR qrImg) {
		this.qrImg = qrImg;
	}
	////////////////////////////////
}

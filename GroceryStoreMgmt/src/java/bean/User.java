package bean;

import java.util.Date;

public class User {
private String iname,pid,anum;
private String qty,price;
private String mfgdt, expdt;

public String getPid() {
	return pid;
}
public void setpid(String pid) {
	this.pid = pid;
}


public String getAnum() {
	return anum;
}
public void setAnum(String anum) {
	this.anum = anum;
}


public String getIname() {
	return iname;
}
public void setIname(String iname) {
	this.iname = iname;
}

public String getQty() {
	return qty;
}

public void setQty(String qty) {
	this.qty = qty;
}

public String getPrice() {
	return price;
}

public void setPrice(String price) {
	this.price = price;
}
public String getMfgdt() {
	return mfgdt;
}

public void setMfgdt(String mfgdt) {
	this.mfgdt = mfgdt;
}

public String getExpdt() {
	return expdt;
}

public void setExpdt(String expdt) {
	this.expdt = expdt;
}

}


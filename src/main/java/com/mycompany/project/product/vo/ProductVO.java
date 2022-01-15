package com.mycompany.project.product.vo;

public class ProductVO {
	
	private int pno;
	private String pcategory;
	private String pname;
	private String pdesc;
	private String pprice;
	private String purl;
	
	public ProductVO() {
		
	}

	public ProductVO(int pno, String pcategory, String pname, String pdesc, String pprice, String purl) {
		super();
		this.pno = pno;
		this.pcategory = pcategory;
		this.pname = pname;
		this.pdesc = pdesc;
		this.pprice = pprice;
		this.purl = purl;
	}

	public int getPno() {
		return pno;
	}

	public void setPno(int pno) {
		this.pno = pno;
	}

	public String getPcategory() {
		return pcategory;
	}

	public void setPcategory(String pcategory) {
		this.pcategory = pcategory;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getPdesc() {
		return pdesc;
	}

	public void setPdesc(String pdesc) {
		this.pdesc = pdesc;
	}

	public String getPprice() {
		return pprice;
	}

	public void setPprice(String pprice) {
		this.pprice = pprice;
	}

	public String getPurl() {
		return purl;
	}

	public void setPurl(String purl) {
		this.purl = purl;
	}
	
}

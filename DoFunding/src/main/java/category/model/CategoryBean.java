package category.model;

public class CategoryBean {

	private int cnum;
	private String code;
	private String cname;
	private String rowcheck;

	public CategoryBean() {
		super();
	}

	public CategoryBean(int cnum, String code, String cname) {
		super();
		this.cnum = cnum;
		this.code = code;
		this.cname = cname;
	}
	
	
	
	public String getRowcheck() {
		return rowcheck;
	}

	public void setRowcheck(String rowcheck) {
		this.rowcheck = rowcheck;
	}

	public int getCnum() {
		return cnum;
	}
	public void setCnum(int cnum) {
		this.cnum = cnum;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
}
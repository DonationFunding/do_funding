package orderdetail.model;


public class OrderDetailBean {
	private int od_no; 
	private int od_id; 
	private int od_pnum; 
	private int od_pname; 
	private int od_price; 
	private int od_qty; 
	private int od_option; 
	private int od_amount; 
	private int od_deliver; 
	
	public OrderDetailBean() {
		super();
	}

	public OrderDetailBean(int od_no, int od_id, int od_pnum, int od_pname, int od_price, int od_qty, int od_option,
			int od_amount, int od_deliver) {
		super();
		this.od_no = od_no;
		this.od_id = od_id;
		this.od_pnum = od_pnum;
		this.od_pname = od_pname;
		this.od_price = od_price;
		this.od_qty = od_qty;
		this.od_option = od_option;
		this.od_amount = od_amount;
		this.od_deliver = od_deliver;
	}

	public int getOd_no() {
		return od_no;
	}

	public void setOd_no(int od_no) {
		this.od_no = od_no;
	}

	public int getOd_id() {
		return od_id;
	}

	public void setOd_id(int od_id) {
		this.od_id = od_id;
	}

	public int getOd_pnum() {
		return od_pnum;
	}

	public void setOd_pnum(int od_pnum) {
		this.od_pnum = od_pnum;
	}

	public int getOd_pname() {
		return od_pname;
	}

	public void setOd_pname(int od_pname) {
		this.od_pname = od_pname;
	}

	public int getOd_price() {
		return od_price;
	}

	public void setOd_price(int od_price) {
		this.od_price = od_price;
	}

	public int getOd_qty() {
		return od_qty;
	}

	public void setOd_qty(int od_qty) {
		this.od_qty = od_qty;
	}

	public int getOd_option() {
		return od_option;
	}

	public void setOd_option(int od_option) {
		this.od_option = od_option;
	}

	public int getOd_amount() {
		return od_amount;
	}

	public void setOd_amount(int od_amount) {
		this.od_amount = od_amount;
	}

	public int getOd_deliver() {
		return od_deliver;
	}

	public void setOd_deliver(int od_deliver) {
		this.od_deliver = od_deliver;
	}
}
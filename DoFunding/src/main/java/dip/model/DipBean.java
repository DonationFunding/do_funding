package dip.model;

public class DipBean {
	private int d_num;
	private int m_no;
	private int p_num;
	private int d_check;

	public DipBean() {
		super();
	}

	public DipBean(int d_num, int m_no, int p_num, int d_check) {
		super();
		this.d_num = d_num;
		this.m_no = m_no;
		this.p_num = p_num;
		this.d_check = d_check;
	}

	public int getD_num() {
		return d_num;
	}

	public void setD_num(int d_num) {
		this.d_num = d_num;
	}

	public int getM_no() {
		return m_no;
	}

	public void setM_no(int m_no) {
		this.m_no = m_no;
	}

	public int getP_num() {
		return p_num;
	}

	public void setP_num(int p_num) {
		this.p_num = p_num;
	}

	public int getD_check() {
		return d_check;
	}

	public void setD_check(int d_check) {
		this.d_check = d_check;
	}

	
}

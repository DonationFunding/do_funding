package like.model;

public class LikeBean {
	private int l_num; 	
	private int m_no; 	
	private int p_num; 	
	private int l_check;
	
	
	public LikeBean() {
		super();
	}

	public LikeBean(int d_num, int m_no, int p_num, int l_check) {
		super();
		this.l_num = d_num;
		this.m_no = m_no;
		this.p_num = p_num;
		this.l_check = l_check;
	}

	public int getL_num() {
		return l_num;
	}
	public void setL_num(int l_num) {
		this.l_num = l_num;
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
	public int getL_check() {
		return l_check;
	}
	public void setL_check(int l_check) {
		this.l_check = l_check;
	}
	
	
}

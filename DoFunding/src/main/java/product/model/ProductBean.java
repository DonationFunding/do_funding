package product.model;


import org.hibernate.validator.constraints.NotEmpty;

import org.springframework.web.multipart.MultipartFile;

public class ProductBean {

	 //default p_readcount,p_total_price,p_reg_date  
	
	private int p_num;		// 		number not null primary key,	
	private final String common=" 입력 누락";
	
	@NotEmpty(message = "카테고리"+common)
	private String p_category_fk;   
	
	@NotEmpty(message = "작성자"+common)
	private String p_writer; 	
	
	@NotEmpty(message = "제목"+common)
	private String p_subject; 	
	
	//default
	private int p_readcount;
	
	
	private String p_image;    				
	
	@NotEmpty(message = "내용"+common)
	private String p_content; 	
	
	
	private String p_like; 	
	
	private String p_option;	
	private String p_option2;	
	

	@NotEmpty(message = "단가"+common)
	private int p_origin_price;  	
	
	private int p_total_price; 	
	
	
	@NotEmpty(message = "단가"+common)
	private int p_end_price;  
	
	
	@NotEmpty(message = "제품포인트"+common)
	private int p_point; 		
	private String p_reg_date; 		
	private String p_start_date; 		
	private String p_end_date;
	
	private int orderqty;
	private MultipartFile upload;
	
	
	public ProductBean() {
		super();
	}	
	
	public ProductBean(int p_num, String p_category_fk, String p_writer, String p_subject, int p_readcount,
			String p_image, String p_content, String p_like, String p_option, String p_option2, int p_origin_price,
			int p_total_price, int p_end_price, int p_point, String p_reg_date, String p_start_date,
			String p_end_date) {
		super();
		this.p_num = p_num;
		this.p_category_fk = p_category_fk;
		this.p_writer = p_writer;
		this.p_subject = p_subject;
		this.p_readcount = p_readcount;
		this.p_image = p_image;
		this.p_content = p_content;
		this.p_like = p_like;
		this.p_option = p_option;
		this.p_option2 = p_option2;
		this.p_origin_price = p_origin_price;
		this.p_total_price = p_total_price;
		this.p_end_price = p_end_price;
		this.p_point = p_point;
		this.p_reg_date = p_reg_date;
		this.p_start_date = p_start_date;
		this.p_end_date = p_end_date;
	}

	public int getOrderqty() {
		return orderqty;
	}
	public void setOrderqty(int orderqty) {
		this.orderqty = orderqty;
	}
	public MultipartFile getUpload() {
		return upload;
	}
	public void setUpload(MultipartFile upload) {
		this.upload = upload;
		System.out.println("upload:" + upload);
		System.out.println("upload.getName():"+upload.getName());
		System.out.println("upload.getOriginalFilename():"+upload.getOriginalFilename());
		p_image = upload.getOriginalFilename();
	}

	public int getP_num() {
		return p_num;
	}
	public void setP_num(int p_num) {
		this.p_num = p_num;
	}
	public String getP_category_fk() {
		return p_category_fk;
	}
	public void setP_category_fk(String p_category_fk) {
		this.p_category_fk = p_category_fk;
	}
	public String getP_writer() {
		return p_writer;
	}
	public void setP_writer(String p_writer) {
		this.p_writer = p_writer;
	}
	public String getP_subject() {
		return p_subject;
	}
	public void setP_subject(String p_subject) {
		this.p_subject = p_subject;
	}
	public int getP_readcount() {
		return p_readcount;
	}
	public void setP_readcount(int p_readcount) {
		this.p_readcount = p_readcount;
	}
	public String getP_image() {
		return p_image;
	}
	public void setP_image(String p_image) {
		this.p_image = p_image;
	}
	public String getP_content() {
		return p_content;
	}
	public void setP_content(String p_content) {
		this.p_content = p_content;
	}
	public String getP_like() {
		return p_like;
	}
	public void setP_like(String p_like) {
		this.p_like = p_like;
	}
	public String getP_option() {
		return p_option;
	}
	public void setP_option(String p_option) {
		this.p_option = p_option;
	}
	public String getP_option2() {
		return p_option2;
	}
	public void setP_option2(String p_option2) {
		this.p_option2 = p_option2;
	}
	public int getP_origin_price() {
		return p_origin_price;
	}
	public void setP_origin_price(int p_origin_price) {
		this.p_origin_price = p_origin_price;
	}
	public int getP_total_price() {
		return p_total_price;
	}
	public void setP_total_price(int p_total_price) {
		this.p_total_price = p_total_price;
	}
	public int getP_end_price() {
		return p_end_price;
	}
	public void setP_end_price(int p_end_price) {
		this.p_end_price = p_end_price;
	}
	public int getP_point() {
		return p_point;
	}
	public void setP_point(int p_point) {
		this.p_point = p_point;
	}
	public String getP_reg_date() {
		return p_reg_date;
	}
	public void setP_reg_date(String p_reg_date) {
		this.p_reg_date = p_reg_date;
	}
	public String getP_start_date() {
		return p_start_date;
	}
	public void setP_start_date(String p_start_date) {
		this.p_start_date = p_start_date;
	}
	public String getP_end_date() {
		return p_end_date;
	}
	public void setP_end_date(String p_end_date) {
		this.p_end_date = p_end_date;
	}

}

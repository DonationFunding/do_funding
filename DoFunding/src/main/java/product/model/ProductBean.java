package product.model;

public class ProductBean {
			private int p_num; 			//number not null primary key,	//제품 번호()
			private String p_writer; 	//varchar2(10) references orders(id) on delete cascade,	//작성자는 member id
			private String p_subject;	// 	varchar2(20) not null,		//게시글 제목
			private int p_readcount;	// int default 0,				//조회수
			private String p_image;		//    	varchar2(500),				//이미지 파일
			private String p_content;	// 	varchar2(20) not null		//게시글 내용			

			
			//--데이터 한계 돌파는 나중에
			//--찜 누른사람 아이디,아이디,아이디......
			private String p_like;		// 	varchar2(3000) not null		//게시글 찜(찜 수는 length)			
					
			//--대분류 카테고리(카테고리 테이블 추가)
			private String p_category_fk;	//varchar2(100)	not null	//
			
			
			//--옵션은 옵션과 value 한쌍을 하나의 값으로 묶어서 입력 ","
			//--옵션/value 구분자: /
			//--옵션덩어리,옵션덩어리  구분자: ,
			//--옵션1(..)	selectbox(color/red), radiobox
			
			private String p_option;		//		varchar2(500)
			
			//--옵션2(..)
			private String p_option2;		//		varchar2(500)
			
			//--가격
			private int p_origin_price; 	//int default 0,			//단가	
			private int p_total_price; 		//int default 0,			//가격(현재금액)
			private int p_end_price; 		//int default 0,			//가격(목표금액) 157%~ 200% 있으니 자유롭게
			
			
			private String p_point; 		//varchar2(20) not null		//제품포인트	
			
			//--후기게시판(이거 테이블 따로 잡을게요) == do_p_board
//		--	p_ref 		number not null,			//게시글(글)
//		--	p_re_step 	number not null,			//한 게시글에 대한 순번(글,댓글,답글)
//		--	p_re_level 	number not null,			//게시글 단계(글=0,댓글=1,답글=2,답글의답글=3...)

//			--요일
			private String p_reg_date; 		//default sysdate  ,	//작성일 default sysdate 넣어도 괜찮을꺼 같습니다.
			private String p_start_date; 	//date not null,		//펀딩 시작일		
			private String p_end_date;		//date not null		//펀딩 마감일	마감일 되면 펀딩못하게 막고, orderdetail 성공, 실패 (진행중)

			
			
			public String getP_category_fk() {
				return p_category_fk;
			}
			public void setP_category_fk(String p_category_fk) {
				this.p_category_fk = p_category_fk;
			}
			public int getP_num() {
				return p_num;
			}
			public void setP_num(int p_num) {
				this.p_num = p_num;
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
			public String getP_point() {
				return p_point;
			}
			public void setP_point(String p_point) {
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

package board.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import utility.Paging;

@Component("myBoardDao")
public class BoardDao {

	private String namespace="board.model.Board";
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	
	public int insertArticle(BoardBean article){
		int cnt=-1;
		cnt=sqlSessionTemplate.insert(namespace+".InsertArticle", article);
		return cnt;
	}//insertArticle
	
	public int deleteArticle(BoardBean article, String passwd){
		int cnt=-1;
		passwd=sqlSessionTemplate.selectOne(namespace+".GetArticlePasswd", article);
		if(passwd.equals(article.getB_passwd())) {
			cnt=sqlSessionTemplate.delete(namespace+".DeleteArticle", article);			
		}
		else {
			cnt=-2;
		}
		System.out.println(cnt);
		return cnt;
	}//deleteArticle
	
	//���
	public int replyArticle(BoardBean article){
		int cnt=-1;
		sqlSessionTemplate.update(namespace+".ReplyPlus", article);			
		cnt=sqlSessionTemplate.insert(namespace+".ReplyArticle", article);
		return cnt;
	}//replyArticle
	
	
	public int updateArticle(BoardBean article){
		int cnt=-1;
		System.out.println(article.getB_passwd());
		String passwd=sqlSessionTemplate.selectOne(namespace+".GetArticlePasswd", article);
		System.out.println("passwd:"+passwd);
		if(passwd.equals(article.getB_passwd())) {
			cnt=sqlSessionTemplate.update(namespace+".UpdateArticle", article);			
		}
		else {
			cnt=-2;
		}
		System.out.println(cnt);
		return cnt;
	}//updateArticle
	
	//detail
	public BoardBean getArticle(BoardBean article){
		BoardBean detail=null;
		
		sqlSessionTemplate.update(namespace+".UpdateReadCount", article);
		//content
		detail=sqlSessionTemplate.selectOne(namespace+".GetArticle", article);
		return detail;
	}//getArticle	
	
	public BoardBean oneSelect(BoardBean article){
		BoardBean detail=null;
		detail=sqlSessionTemplate.selectOne(namespace+".GetArticle", article);
		return detail;
	}//oneSelect	

	public List<BoardBean> getArticles(Paging pageInfo,Map<String, String> map){
		RowBounds rowBounds =new RowBounds(pageInfo.getOffset(),pageInfo.getLimit());
		List<BoardBean> articleList= sqlSessionTemplate.selectList(namespace+".GetArticles", map, rowBounds);		
		
		return articleList;
	}//getArticles
	
	public int getArticleCount(Map<String, String> map){
		int totalCount=0;
		totalCount=sqlSessionTemplate.selectOne(namespace+".GetArticleCount", map);
		return totalCount;
	}//getArticleCount

	
	public int multiDeleteBoard(String[] rowchecks) {
		int count = 0;
		for(int i=0;i<rowchecks.length;i++) {
			String rowcheck=rowchecks[i];
			System.out.println("rowcheck:"+rowcheck);
			int cnt = sqlSessionTemplate.delete(namespace+".MultiDeleteBoard",rowcheck);	
			count+=cnt;
		}

		return count;	
	}
	
	public int adminDeleteArticle(BoardBean bdBean) {
		int cnt=-1;
			cnt=sqlSessionTemplate.delete(namespace+".DeleteArticle", bdBean);			
		System.out.println(cnt);
		return cnt;		
	}

//-----------------------공지 게시판------------------------------------------
	
	public int getNoticeCount(Map<String, String> map) {
		int totalCount=0;
		totalCount=sqlSessionTemplate.selectOne(namespace+".GetNoticeCount", map);
		return totalCount;
	}
	
	public List<NoticeBean> getNotices(Paging pageInfo,Map<String, String> map){
		RowBounds rowBounds =new RowBounds(pageInfo.getOffset(),pageInfo.getLimit());
		List<NoticeBean> articleList= sqlSessionTemplate.selectList(namespace+".GetNotices", map, rowBounds);		
		
		return articleList;
	}//getNotices

	
	public int insertNotice(NoticeBean noticeBean){
		int cnt=-1;
		cnt=sqlSessionTemplate.insert(namespace+".InsertNotice", noticeBean);
		return cnt;
	}//insertArticle
	
	public int deleteNotice(NoticeBean noticeBean){
		int cnt=-1;
			cnt=sqlSessionTemplate.delete(namespace+".DeleteNotice", noticeBean);			
		System.out.println(cnt);
		return cnt;
	}//deleteNotice
		
	public int UpdateNotice(NoticeBean noticeBean){
		int cnt=-1;
			cnt=sqlSessionTemplate.update(namespace+".UpdateNotice", noticeBean);			

		System.out.println(cnt);
		return cnt;
	}//UpdateNotice
	
	//detail
	public NoticeBean getNotice(NoticeBean noticeBean){
		
		sqlSessionTemplate.update(namespace+".NoticeUpdateReadCount", noticeBean);
		//content
		NoticeBean detail=sqlSessionTemplate.selectOne(namespace+".GetNotice", noticeBean);
		return detail;
	}//getNotice	
	
	public NoticeBean noticeOneSelect(NoticeBean noticeBean){
		NoticeBean detail=sqlSessionTemplate.selectOne(namespace+".GetNotice", noticeBean);
		return detail;
	}//noticeOneSelect	

	public int multiDeleteNotice(String[] rowchecks) {
		int count = 0;
		for(int i=0;i<rowchecks.length;i++) {
			String rowcheck=rowchecks[i];
			System.out.println("rowcheck:"+rowcheck);
			int cnt = sqlSessionTemplate.delete(namespace+".MultiDeleteNotice",rowcheck);	
			count+=cnt;
		}

		return count;	
	}//multiDeleteNotice
	

	
//-----------------faq게시판----------------------------------------------------------------------------	
	
	
	public int getFaqCount(Map<String, String> map) {
		int totalCount=0;
		totalCount=sqlSessionTemplate.selectOne(namespace+".GetFaqCount", map);
		return totalCount;
	}
	
	public List<FaqBean> getFaqs(Paging pageInfo,Map<String, String> map){
		RowBounds rowBounds =new RowBounds(pageInfo.getOffset(),pageInfo.getLimit());
		List<FaqBean> articleList= sqlSessionTemplate.selectList(namespace+".GetFaqs", map, rowBounds);		
		
		return articleList;
	}//getFaqs


	public int insertFaq(FaqBean faqBean){
		int cnt=-1;
		cnt=sqlSessionTemplate.insert(namespace+".InsertFaq", faqBean);
		return cnt;
	}//insertFaq
	
	public int deleteFaq(FaqBean faqBean){
		int cnt=-1;
			cnt=sqlSessionTemplate.delete(namespace+".DeleteFaq", faqBean);			
		System.out.println(cnt);
		return cnt;
	}//deleteFaq
		
	public int UpdateFaq(FaqBean faqBean){
		int cnt=-1;
			cnt=sqlSessionTemplate.update(namespace+".UpdateFaq", faqBean);			

		System.out.println(cnt);
		return cnt;
	}//UpdateFaq
	
	//detail
	public FaqBean getFaq(FaqBean faqBean){
		sqlSessionTemplate.update(namespace+".FaqUpdateReadCount", faqBean);
		//content
		FaqBean detail=sqlSessionTemplate.selectOne(namespace+".GetFaq", faqBean);
		return detail;
	}//getFaq	
	
	//update
	public FaqBean faqOneSelect(FaqBean faqBean){
		FaqBean detail=sqlSessionTemplate.selectOne(namespace+".GetFaq", faqBean);
		return detail;
	}//faqOneSelect	

	
	public int multiDeleteFaq(String[] rowchecks) {
		int count = 0;
		for(int i=0;i<rowchecks.length;i++) {
			String rowcheck=rowchecks[i];
			System.out.println("rowcheck:"+rowcheck);
			int cnt = sqlSessionTemplate.delete(namespace+".MultiDeleteFaq",rowcheck);	
			count+=cnt;
		}
		return count;	
	}//multiDeleteFaq
	
	
}

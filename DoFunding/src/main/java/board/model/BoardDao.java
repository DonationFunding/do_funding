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
		//�ϳ��� ������Ű�� ������Ʈ�ʿ�.
		sqlSessionTemplate.update(namespace+".ReplyPlus", article);			
		cnt=sqlSessionTemplate.insert(namespace+".ReplyArticle", article);
		//sql="update board set re_step=re_step+1 where ref=? and re_step>?";
		//�׷� �θ� �������� �̹� ���� �����ϰ� ��. �̰� insert���� ������ ����߉�.
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
		//��ȸ��
		sqlSessionTemplate.update(namespace+".UpdateReadCount", article);
		//content����
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



	
	
}

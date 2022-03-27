package boxOffice.dao;

import java.io.Reader;
import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import boxOffice.model.Review;

public class ReviewDao {

	private static ReviewDao instance = new ReviewDao();
	private ReviewDao() {}
	public static ReviewDao getInstance() {
		return instance;
	}
	
	private static SqlSession session;
	static {
			try {
				Reader reader = Resources.getResourceAsReader("configuration.xml");
				SqlSessionFactory ssf = new SqlSessionFactoryBuilder().build(reader);
				session = ssf.openSession(true);
			}catch (Exception e) {
				System.out.println("review 연결에러 : " + e.getMessage());
			}
	}
	public int getTotal() {
		return (int) session.selectOne("reviewns.getTotal");
	}
	@SuppressWarnings("unchecked")
	public List<Review> reviewList(int startRow, int endRow) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		return session.selectList("reviewns.reviewList", map);
	}
	public int insert(Review review) {
		return session.insert("reviewns.insert", review);
	}
	public void readCountUpdate(int rvNum) {
		session.update("reviewns.readCountUpdate", rvNum);
	}
	public Review selectRview(int rvNum) {
		return (Review) session.selectOne("reviewns.selectRview", rvNum);
	}
}

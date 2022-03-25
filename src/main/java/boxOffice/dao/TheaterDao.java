package boxOffice.dao;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class TheaterDao {
	private static TheaterDao instance = new TheaterDao();
	private TheaterDao() {}
	public static TheaterDao getInstance() {
		return instance;
	}
	private static SqlSession session;
	static {
		try {
			Reader reader = Resources.getResourceAsReader("configuration.xml");
			SqlSessionFactory ssf = new SqlSessionFactoryBuilder().build(reader);
			session = ssf.openSession(true);
		}catch (Exception e) {
			System.out.println("연결에러:"+e.getMessage());
		}
	}
	
	

}

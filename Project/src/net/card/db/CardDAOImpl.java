package net.card.db;

import java.io.IOException;
import java.io.Reader;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class CardDAOImpl {
	
	private SqlSession getSession() {
		SqlSession session=null;
		Reader reader=null;
		try {
			reader = Resources.getResourceAsReader("SqlMapConfig.xml");
			SqlSessionFactory sf = new SqlSessionFactoryBuilder().build(reader);
			session = sf.openSession(true);
		} catch (IOException e) {
			System.out.println(e.getMessage());
		}
		return session;
	}	
		
	/* Ïπ¥Îìú ?Ñ†?Éù */
	public List<CardBean> getCardList(Map m) throws SQLException {
		SqlSession session=null;
		session = getSession();
		List<CardBean>  list = session.selectList("card.card_list", m);
	    return list;
	}	
	/* Ïπ¥Îìú ?†ÑÏ≤? ?Ñ†?Éù */
	public List<CardBean> getCardList_all(Map m) throws SQLException {
		SqlSession session=null;
		session = getSession();
		List<CardBean> list = session.selectList("card.card_list_all",m);
	    return list;
	}	

	

	
	
}

package net.review.db;

import java.io.IOException;
import java.io.Reader;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class ReviewDAOImpl {

	private SqlSession getSession() {
		SqlSession session = null;
		Reader reader = null;
		try {
			reader = Resources.getResourceAsReader("./SqlMapConfig.xml");
			SqlSessionFactory sf = new SqlSessionFactoryBuilder().build(reader);
			session = sf.openSession(true);
		} catch (IOException e) {
			System.out.println(e.getMessage());
		}
		return session;
	}

	/* 리뷰 저장 */
	public void reviewInsert(ReviewBean review) {
		SqlSession session = null;
		int result = 0;
		try {
			session = getSession();
			System.out.println("insert1");

			System.out.println("id1=" + review.getReview_id());
			System.out.println("subject1=" + review.getReview_subject());
			System.out.println("content1=" + review.getReview_content());
			System.out.println("star_rate1=" + review.getStar_rate());

			result = session.insert("review.review_insert", review);
			System.out.println("result=" + result);
		} catch (Exception e) {
			System.out.println("result=" + result);
			System.out.println(e.getMessage());
		}
	}

	/* 게시판 총 게시물 수 */
	public int getListCount() throws SQLException {
		int count = 0;
		SqlSession session = null;
		session = getSession();
		count = ((Integer) session.selectOne("review.review_count")).intValue();

		return count;
	}

	/* 게시물 목록 */
	public List<ReviewBean> getReviewList(Map m) throws SQLException {
		SqlSession session = null;
		session = getSession();
		List<ReviewBean> list = session.selectList("review.review_list", m);
		return list;
	}

	/* 게시물 수정 */
	public void reviewEdit(ReviewBean review) throws SQLException {
		SqlSession session = null;
		session = getSession();
		session.update("review.review_edit", review);
	}

	/* 게시물 삭제 */
	public void reviewDelete(int review_num) throws SQLException {
		SqlSession session = null;
		session = getSession();
		session.delete("review.review_del", review_num);
	}

}

package net.review.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.review.db.ReviewBean;
import net.review.db.ReviewDAOImpl;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class ReviewAddAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

//		HttpSession session = request.getSession();
//		String id = (String)session.getAttribute("id");
		
		
		ReviewDAOImpl reviewdao = new ReviewDAOImpl();
		ReviewBean reviewdata = new ReviewBean();

		ActionForward forward = new ActionForward();

//		reviewdata.setReview_id();
//		reviewdata.setStar_rate(Integer.parseInt(request.getParameter("star_rate")));
		reviewdata.setReview_subject(request.getParameter("review_subject"));
		reviewdata.setReview_content(request.getParameter("review_content"));
		reviewdata.setStar_rate(Integer.parseInt(request.getParameter("star_rate")));
		
		reviewdao.reviewInsert(reviewdata);
		
		forward.setRedirect(true);
		forward.setPath("./ReviewList.re");
		return forward;
	}
}
package net.review.action;

import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.review.db.ReviewDAOImpl;

public class ReviewListAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		// BoardDAO boarddao=new BoardDAO();
		ReviewDAOImpl boarddao = new ReviewDAOImpl();
		List reviewlist = new ArrayList();

		int page = 1; // ���� ������ ��ȣ
		int limit = 10; // �� ȭ�鿡 ����� ���ڵ� ����
		int card_num = 1;
//		
//		
		
		if (request.getParameter("card_num") != null) {
			card_num = Integer.parseInt(request.getParameter("card_num"));
		}

		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}

		int listcount = boarddao.getListCount(); // �� ����Ʈ ���� �޾ƿ�
		// boardlist = boarddao.getBoardList(page,limit); //����Ʈ�� �޾ƿ�
		
		// �� �� �̻��� ���� ������ ��
		Map m = new HashMap();
		m.put("page", page);
		m.put("limit", limit);
		m.put("card_num", card_num);
		reviewlist = boarddao.getReviewList(m);
//		boardlist = boarddao.getBoardList(page);

		// �� ������ ��
		int maxpage = (int) ((double) listcount / limit + 0.95); // 0.95�� ���ؼ� �ø�
																	// ó��

		// ���� �������� ������ ���� ������ ��(1, 11, 21 ��...)
		int startpage = (((int) ((double) page / 10 + 0.9)) - 1) * 10 + 1;

		// ���� �������� ������ ������ ������ ��(10, 20, 30 ��...)
		int endpage = startpage + 10 - 1;

		if (endpage > maxpage)
			endpage = maxpage;

		int number = listcount - (page - 1) * 10;

		request.setAttribute("page", page); // ���� ������ ��
		request.setAttribute("maxpage", maxpage); // �ִ� ������ ��
		request.setAttribute("startpage", startpage); // ���� �������� ǥ���� ù ������ ��
		request.setAttribute("endpage", endpage); // ���� �������� ǥ���� �� ������ ��
		request.setAttribute("listcount", listcount); // �� ��
		request.setAttribute("reviewlist", reviewlist);
//		request.setAttribute("card_num", card_num);

		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("./review/review_list.jsp");
		return forward;
	}
}
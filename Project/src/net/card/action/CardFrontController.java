package net.card.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.bo")
public class CardFrontController extends javax.servlet.http.HttpServlet
		implements javax.servlet.Servlet {

	private static final long serialVersionUID = 1L;

	protected void doProcess(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String RequestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = RequestURI.substring(contextPath.length());
		ActionForward forward = null;
		Action action = null;
	
		System.out.println("RequestURI=" + RequestURI);
		System.out.println("contextPath=" + contextPath);
		System.out.println("command=" + command);

		if (command.equals("/CardAddAction.bo")) {// 카드 ?��?�� ?��?��?�� 받는 �?�?
			action = new CardListAction();// 모델
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} 
		
		else if (command.equals("/CardAllAction.bo")) {// 카드 ?���? ?��?��?�� 받는 �?�?
			action = new CardList2Action();// 모델
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} 

		if (forward != null) {
			if (forward.getRedirect()) { // true
				response.sendRedirect(forward.getPath());
			} else { // false 값전?��?�� �??��?��
				RequestDispatcher dispatcher = request
						.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
			}
		}
	}// doprocess() end

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
}
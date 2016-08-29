package net.mem.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.mem.db.MemberDao;
import net.mem.db.Memberbean;

public class MemberViewAction implements Action{
	 public ActionForward execute(HttpServletRequest request,HttpServletResponse response) 
	 	throws Exception{
		 	ActionForward forward = new ActionForward();
		 	
		 	HttpSession session=request.getSession();
			MemberDao memberdao=new MemberDao();
	   		Memberbean member=new Memberbean();	   		
	   		
//	   		String id=(String)session.getAttribute("Mem_ID");
	   		String id="a";
	   		
//	   		if(id==null){
//				forward.setRedirect(true);
//				forward.setPath("./MemberLogin.me");
//				return forward;
//	   		}
	   		member=memberdao.select(id);

	   		
	   		if(member==null){
	   			System.out.println("회원 정보 보기 실패");
		   		return null;
		   	}
	   		
	   		request.setAttribute("member", member);
	   		
	   		forward.setRedirect(false);
	   		forward.setPath("./mem/member_info.jsp");
	   		return forward;
	}
}
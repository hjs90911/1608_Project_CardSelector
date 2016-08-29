package net.mem.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.mem.db.MemberDao;

public class MemberDeleteAction implements Action{
	 public ActionForward execute(HttpServletRequest request,HttpServletResponse response) 
	 	throws Exception{
		 	ActionForward forward = new ActionForward();
		 	
		 	HttpSession session=request.getSession();
			MemberDao memberdao=new MemberDao();
	   		
			int result=0;
			
	   		String id=(String)session.getAttribute("Mem_id");
	   		System.out.println(id);
	   		
	   		if(id==null){
				forward.setRedirect(true);
				forward.setPath("./loginForm.me");
				return forward;
	   		}
	   		
	   		String deleteId=request.getParameter("Mem_id");
	   		result=memberdao.delete(deleteId);
	   		System.out.println(deleteId);
	   		
	   		if(result==0){
	   			System.out.println("회원 삭제 실패");
		   		return null;
		   	}
	   		
	   		forward.setRedirect(true);
	   		forward.setPath("./main.me");
	   		return forward;
	}
}
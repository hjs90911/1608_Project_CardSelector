package net.mem.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.mem.action.ActionForward;
import net.mem.db.Memberbean;
import net.mem.db.MemberDao;

public class MemberLoginAction implements Action{
	 public ActionForward execute(HttpServletRequest request,HttpServletResponse response) 
	 	throws Exception{
		 	ActionForward forward = new ActionForward();
		 	int result=0;
		 	HttpSession session=request.getSession();
			MemberDao memberdao=new MemberDao();
	   		Memberbean member=new Memberbean();
	   		
	   		member.setMem_id(request.getParameter("Mem_ID"));
	   		member.setMem_pw(request.getParameter("Mem_PW"));
	   		result=memberdao.chk(member);
	   		
	   		if(result==0){ //ID:일치  비밀번호:불일치
	   			response.setContentType("text/html;charset=utf-8");
		   		PrintWriter out=response.getWriter();
		   		out.println("<script>");
		   		out.println("alert('아이디가 존재하지 않습니다.');");
		   		out.println("location.href='./mem/loginForm.jsp';");
		   		out.println("</script>");
		   		out.close();
		   		return null;
	   		}else if(result==-1){ //ID가 존재하지 않는 경우
	   			response.setContentType("text/html;charset=utf-8");
		   		PrintWriter out=response.getWriter();
		   		out.println("<script>");
		   		out.println("alert('비밀번호가 같지 않습니다.');");
		   		out.println("location.href='./mem/loginForm.jsp';");
		   		out.println("</script>");
		   		out.close();
		   		return null;
		   	}
	   		//로그인 성공
	   		
	   		//로그인 후 값을 공유함.
	   		session.setAttribute("id", member.getMem_id());
	   		
	   		forward.setRedirect(true);
	   		forward.setPath("./main.me");
	   		return forward;
	}
}
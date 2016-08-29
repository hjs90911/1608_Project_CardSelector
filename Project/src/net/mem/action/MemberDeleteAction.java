package net.mem.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.mem.db.MemberDao;
import net.mem.db.Memberbean;

public class MemberDeleteAction implements Action{
	 public ActionForward execute(HttpServletRequest request,HttpServletResponse response) 
	 	throws Exception{
		    response.setContentType("text/html;charset=utf-8");
		 
		 	ActionForward forward = new ActionForward();
		 	
		 	HttpSession session=request.getSession();
			MemberDao memberdao=new MemberDao();
			PrintWriter out=response.getWriter();
			int result=0;
			
	   		String id=(String)session.getAttribute("id");
	   		String pw = request.getParameter("Mem_PW");
//	   	
	   		System.out.println("세션 Mem_id="+id);

	   		
	   		Memberbean mem = memberdao.select(id);
		   	if(!mem.getMem_pw().equals(pw)){ 
		   		
		   		out.println("<script>");
				out.println("alert('비밀번호가 같지 않습니다.!')");
				out.println("history.go(-1)");
				out.println("</script>");
		   		out.close();
		   		return null;
		   		
		   	}else{   	
		   		memberdao.delete(id);
		   	}
		   	
		   	forward.setRedirect(true);
		   	forward.setPath("./mem/loginForm.jsp");
		   	return forward;	   	
	}
}
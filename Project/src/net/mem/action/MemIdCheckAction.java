package net.mem.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.mem.db.MemberDao;
import net.mem.db.Memberbean;

// id 중복검사 하는 Action 클래스
public class MemIdCheckAction implements Action {
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		ActionForward forward = new ActionForward();
		Memberbean member=new Memberbean();
		MemberDao memberdao = new MemberDao();
		member.setMem_id(request.getParameter("Mem_ID"));
		
		int result = 0; //  
		
		result = memberdao.chk(member);
		// result=1 (ID가 존재하는 경우)
		// result=-1 (ID가 존재하지 않는 경우)
		
		request.setAttribute("result", result );

		forward.setRedirect(false);
		forward.setPath("/mem/idCheck.jsp");
		return forward;
		
		}
	}



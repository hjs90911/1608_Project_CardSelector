package net.mem.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.mem.action.ActionForward;
import net.mem.db.Memberbean;
import net.mem.db.MemberDao;

public class MemberJoinAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("�뱾�뼱�샂1");
		request.setCharacterEncoding("utf-8");
		System.out.println("�뱾�뼱�샂2");

		ActionForward forward = new ActionForward();

		MemberDao memberdao = new MemberDao();
		Memberbean member = new Memberbean();

		boolean result = false;

		member.setMem_id(request.getParameter("Mem_ID"));
		member.setMem_pw(request.getParameter("Mem_PW"));
		member.setMem_name(request.getParameter("Mem_NAME"));
		member.setMem_gender(request.getParameter("Mem_GENDER"));
		member.setMem_jumin1(request.getParameter("Mem_JUMIN1"));
		member.setMem_jumin2(request.getParameter("Mem_JUMIN2"));
		member.setMem_phone1(request.getParameter("Mem_PHONE1"));
		member.setMem_phone2(request.getParameter("Mem_PHONE2"));
		member.setMem_phone3(request.getParameter("Mem_PHONE3"));

		String str = "";
		String hobby[] = request.getParameterValues("Mem_HOBBY");
		for (int i = 0; i < hobby.length; i++)
			str += hobby[i] + "/";
		member.setMem_hobby(str.trim());

		member.setMem_bank(request.getParameter("Mem_BANK"));
		member.setMem_card(request.getParameter("Mem_CARD"));
		member.setMem_dong(request.getParameter("Mem_DONG"));

		System.out.println(member.getMem_id());
		System.out.println(member.getMem_pw());
		System.out.println(member.getMem_jumin1());
		System.out.println(member.getMem_gender());
		System.out.println(member.getMem_phone2());
		System.out.println(member.getMem_bank());
		System.out.println(member.getMem_card());
		System.out.println(member.getMem_dong());

		result = memberdao.insert(member);

		if (result == false) {
			System.out.println("�쉶�썝媛��엯 �떎�뙣");
			return null;
		}

		// �쉶�썝媛��엯 �꽦怨�.
		forward.setRedirect(true);
		forward.setPath("./main.me");
		return forward;
	}
}
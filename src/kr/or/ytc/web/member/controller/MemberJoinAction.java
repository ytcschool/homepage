package kr.or.ytc.web.member.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ytc.web.member.model.MemberBean;
import kr.or.ytc.web.member.model.MemberDAO;

public class MemberJoinAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");

		ActionForward forward = new ActionForward();

		MemberDAO memberdao = new MemberDAO();
		MemberBean member = new MemberBean();

		boolean result = false;

		member.setMEMBER_ID(request.getParameter("MEMBER_ID"));
		member.setMEMBER_PW(request.getParameter("MEMBER_PW"));
		member.setMEMBER_NAME(request.getParameter("MEMBER_NAME"));
		member.setMEMBER_YEAR(Integer.parseInt(request.getParameter("MEMBER_YEAR")));
		member.setMEMBER_MONTH(Integer.parseInt(request.getParameter("MEMBER_MONTH")));
		member.setMEMBER_DAY(Integer.parseInt(request.getParameter("MEMBER_DAY")));
		member.setMEMBER_GENDER(request.getParameter("MEMBER_GENDER"));
		member.setMEMBER_EMAIL(request.getParameter("MEMBER_EMAIL"));

		result = memberdao.joinMember(member);

		String id = request.getParameter("MEBMER_ID");
		String pw = request.getParameter("MEMBER_PW");
		
		if (id == null && pw == null) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('������ ���Է��� �׸��� �ֽ��ϴ�. Ȯ�����ֽñ� �ٶ��ϴ�.');");
			out.println("</script>");
			out.close();
		}
		
		if (result == false) {
			System.out.println("ȸ������ ����");
			return null;
		}

		// ȸ������ ����.
		forward.setRedirect(true);
		forward.setPath("./MemberLogin.me");
		return forward;
	}
}
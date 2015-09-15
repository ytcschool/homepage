package kr.or.ytc.web.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ytc.web.member.model.MemberBean;
import kr.or.ytc.web.member.model.MemberDAO;

public class MemberJoinAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("euc-kr");

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

		if (result == false) {
			System.out.println("회원가입 실패");
			return null;
		}

		// 회원가입 성공.
		forward.setRedirect(true);
		forward.setPath("./MemberLogin.me");
		return forward;
	}
}
package kr.or.ytc.web.member.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.ytc.web.member.model.MemberBean;
import kr.or.ytc.web.member.model.MemberDAO;

public class MemberLoginAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();

		HttpSession session = request.getSession();
		MemberDAO memberdao = new MemberDAO();
		MemberBean member = new MemberBean();

		int result = -1;

		member.setMEMBER_ID(request.getParameter("MEMBER_ID"));
		member.setMEMBER_PW(request.getParameter("MEMBER_PW"));
		
		// 가입회원 이름정보 추출
		String mem_name = memberdao.pickMember(member);
		
		// 로그인 상 회원 검증 과정
		result = memberdao.isMember(member);

		if (result == 0) {
			response.setContentType("text/html;charset=euc-kr");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('아이디나 비밀번호가 일치하지 않습니다.');");
			out.println("location.href='./MemberLogin.me';");
			out.println("</script>");
			out.close();
			return null;
		} else if (result == -1) {
			response.setContentType("text/html;charset=euc-kr");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('아이디가 존재하지 않습니다.');");
			out.println("location.href='./MemberLogin.me';");
			out.println("</script>");
			out.close();
			return null;
		}

		// 로그인 성공
		session.setAttribute("id", member.getMEMBER_ID());
		session.setAttribute("name", mem_name);
		
		forward.setRedirect(true);
		forward.setPath("./index.jsp");
		return forward;
	}
}
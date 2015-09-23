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
		
		// ����ȸ�� �̸����� ����
		String mem_name = memberdao.pickMember(member);
		
		// �α��� �� ȸ�� ���� ����
		result = memberdao.isMember(member);

		if (result == 0) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('���̵� ��й�ȣ�� ��ġ���� �ʽ��ϴ�.');");
			out.println("location.href='./MemberLogin.me';");
			out.println("</script>");
			out.close();
			return null;
		} else if (result == -1) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('���̵� �������� �ʽ��ϴ�.');");
			out.println("location.href='./MemberLogin.me';");
			out.println("</script>");
			out.close();
			return null;
		}

		// �α��� ����
		session.setAttribute("id", member.getMEMBER_ID());
		session.setAttribute("name", mem_name);
		
		forward.setRedirect(true);
		forward.setPath("./index.jsp");
		return forward;
	}
}
package kr.or.ytc.web.annmntboard.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import kr.or.ytc.web.annmntboard.model.*;

public class AnnmntChkDeleteAction implements AnnmntAction {
	 public AnnmntActionForward execute(HttpServletRequest request,HttpServletResponse response) 
			 	throws Exception{
			
		 
		HttpSession session = request.getSession();
		String[] chkdelList = (String[])session.getAttribute("chkdelList");

		
		
		System.out.println(request.getParameter("MEMBER_PW"));
		
		AnnmntActionForward forward = new AnnmntActionForward();
		request.setCharacterEncoding("euc-kr");
			
		boolean result=false;
		int usercheck=0;
		 
		AnnouncementDAO boarddao=new AnnouncementDAO();
		
		usercheck=boarddao.isAdmin(request.getParameter("MEMBER_PW"));
	   	System.out.println("usercheck==="+usercheck);
		if(usercheck==0){
	   		response.setContentType("text/html;charset=euc-kr");
	   		PrintWriter out=response.getWriter();
	   		out.println("<script>");
	   		out.println("alert('삭제할 권한이 없습니다.');");
	   		out.println("location.href='./AnnmntList.do';");
	   		out.println("</script>");
	   		out.close();
	   		return null;
		} 
		for (int i=0; i<chkdelList.length;i++) {
			System.out.println(chkdelList[i]);
			int num = Integer.parseInt(chkdelList[i]);
			result=boarddao.boardChkDelete(num);
						
			System.out.println("게시판 삭제 성공");   	
		}
		if(result==false){
	   		System.out.println("게시판 삭제 실패");
	   		return null;
		}
		// System.out.println(result); 
		
		/*
		if(result==false){
	   		System.out.println("게시판 삭제 실패");
	   		return null;
		 }
	   	*/
		 
		forward.setRedirect(true);
  		//forward.setPath("./module/AnnmntBoard/ann_board_list.view");
		forward.setPath(request.getContextPath()+"/AnnmntList.do");
		return forward;
	   		
	}
}

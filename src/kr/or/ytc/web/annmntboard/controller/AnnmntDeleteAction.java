package kr.or.ytc.web.annmntboard.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ytc.web.annmntboard.model.*;

public class AnnmntDeleteAction implements AnnmntAction {
	 public AnnmntActionForward execute(HttpServletRequest request,HttpServletResponse response) 
			 	throws Exception{
				 
		 AnnmntActionForward forward = new AnnmntActionForward();
		 	request.setCharacterEncoding("utf-8");
				
				
			   	boolean result=false;
			   	boolean usercheck=false;
			   	int num=Integer.parseInt(request.getParameter("num"));
			   	
			   	AnnouncementDAO boarddao=new AnnouncementDAO();
			   	usercheck=boarddao.isBoardWriter(num, request.getParameter("ANNBOARD_PASS"));
			   	
			   	if(usercheck==false){
			   		response.setContentType("text/html;charset=utf-8");
			   		PrintWriter out=response.getWriter();
			   		out.println("<script>");
			   		out.println("alert('삭제할 권한이 없습니다.');");
			   		out.println("location.href='./AnnmntList.do';");
			   		out.println("</script>");
			   		out.close();
			   		return null;
			   	}
			   	
			   	result=boarddao.boardDelete(num);
			   	if(result==false){
			   		System.out.println("게시판 삭제 실패");
			   		return null;
			   	}
			   	
			   	System.out.println("게시판 삭제 성공");
			   	forward.setRedirect(true);
		   		//forward.setPath("./module/AnnmntBoard/ann_board_list.view");
		   		forward.setPath(request.getContextPath()+"/AnnmntList.do");
		   		return forward;
		   		
			 }
}

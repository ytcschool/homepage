package kr.or.ytc.web.annmntboard.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ytc.web.annmntboard.model.AnnouncementDAO;
import kr.or.ytc.web.annmntboard.model.Announcement;

public class AnnmntModifyView implements AnnmntAction {
	 public AnnmntActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{
		 	AnnmntActionForward forward = new AnnmntActionForward();
		 	request.setCharacterEncoding("utf-8");
	   		
			AnnouncementDAO boarddao=new AnnouncementDAO();
			Announcement boarddata=new Announcement();
		   	
			int num=Integer.parseInt(request.getParameter("num"));
		   	boarddata=boarddao.getDetail(num);
		   	
		   	if(boarddata==null){
		   		System.out.println("페이지 이동 실패");
		   		return null;
		   	}
		   	System.out.println("페이지 이동 완료");
		   	
		   	request.setAttribute("boarddata", boarddata);
		   	forward.setRedirect(false);
	   		forward.setPath("./module/AnnmntBoard/ann_board_modify.view");
	   		return forward;
	 }
}

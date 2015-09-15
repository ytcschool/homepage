package kr.or.ytc.web.annmntboard.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ytc.web.annmntboard.model.Announcement;
import kr.or.ytc.web.annmntboard.model.AnnouncementDAO;
	
public class AnnmntDetailAction implements AnnmntAction {
	 public AnnmntActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{ 
		request.setCharacterEncoding("euc-kr");
  		
		AnnouncementDAO boarddao=new AnnouncementDAO();
	   	Announcement boarddata=new Announcement();
	   	
		int num=Integer.parseInt(request.getParameter("num"));
		boarddao.setReadCountUpdate(num);
	   	boarddata=boarddao.getDetail(num);
	   	
	   	if(boarddata==null){
	   		System.out.println("�󼼺��� ����");
	   		return null;
	   	}
	   	System.out.println("�󼼺��� ����");
	   	
	   	request.setAttribute("boarddata", boarddata);
	   	AnnmntActionForward forward = new AnnmntActionForward();
	   	forward.setRedirect(false);
  		forward.setPath("./module/AnnmntBoard/ann_board_view.view");
  		return forward;
  		
	 }
}
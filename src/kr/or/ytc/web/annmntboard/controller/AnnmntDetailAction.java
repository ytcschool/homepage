package kr.or.ytc.web.annmntboard.controller;

import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;
	
	import kr.or.ytc.web.annmntboard.model.AnnouncementDAO;
	import kr.or.ytc.web.annmntboard.model.Announcement;
	
public class AnnmntDetailAction implements AnnmntAction {
	 public AnnmntActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{ 
		request.setCharacterEncoding("euc-kr");
  		
		AnnouncementDAO boarddao=new AnnouncementDAO();
	   	Announcement boarddata=new Announcement();
	   	
		int num=Integer.parseInt(request.getParameter("num"));
		boarddao.setReadCountUpdate(num);
	   	boarddata=boarddao.getDetail(num);
	   	
	   	if(boarddata==null){
	   		System.out.println("상세보기 실패");
	   		return null;
	   	}
	   	System.out.println("상세보기 성공");
	   	
	   	request.setAttribute("boarddata", boarddata);
	   	AnnmntActionForward forward = new AnnmntActionForward();
	   	forward.setRedirect(false);
  		forward.setPath("./AnnmntBoard/ann_board_view.jsp");
  		return forward;

	 }
}
package kr.or.ytc.web.annmntboard.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ytc.web.annmntboard.model.*;

public class AnnmntModifyAction implements AnnmntAction {
	 public AnnmntActionForward execute(HttpServletRequest request,HttpServletResponse response) 
			 	throws Exception{
				 request.setCharacterEncoding("utf-8");
				 AnnmntActionForward forward = new AnnmntActionForward();
				 boolean result = false;
				 
				 int num=Integer.parseInt(request.getParameter("ANNBOARD_NUM"));
				 
				 AnnouncementDAO boarddao=new AnnouncementDAO();
				 Announcement boarddata=new Announcement();
				 
				 boolean usercheck=boarddao.isBoardWriter(num, request.getParameter("ANNBOARD_PASS"));
				 if(usercheck==false){
				   		response.setContentType("text/html;charset=utf-8");
				   		PrintWriter out=response.getWriter();
				   		out.println("<script>");
				   		out.println("alert('������ ������ �����ϴ�.');");
				   		out.println("location.href='./AnnmntList.do';");
				   		out.println("</script>");
				   		out.close();
				   		return null;
				 }
				 
				 try{
					 boarddata.setANNBOARD_NUM(num);
					 boarddata.setANNBOARD_SUBJECT(request.getParameter("ANNBOARD_SUBJECT"));
					 boarddata.setANNBOARD_CONTENT(request.getParameter("ANNBOARD_CONTENT"));
					 
					 result = boarddao.boardModify(boarddata);
					 if(result==false){
				   		System.out.println("�Խ��� ���� ����");
				   		return null;
				   	 }
				   	 System.out.println("�Խ��� ���� �Ϸ�");
				   	 
				   	 forward.setRedirect(true);
				   	 forward.setPath("./AnnmntDetailAction.do?num="+boarddata.getANNBOARD_NUM());
				   	 return forward;
			   	 }catch(Exception ex){
			   			ex.printStackTrace();	 
				 }
				 
				 return null;
			 }
}

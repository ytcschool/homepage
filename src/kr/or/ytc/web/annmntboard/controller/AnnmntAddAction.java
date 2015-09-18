package kr.or.ytc.web.annmntboard.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.or.ytc.web.annmntboard.model.AnnouncementDAO;
import kr.or.ytc.web.annmntboard.model.Announcement;

public class AnnmntAddAction implements AnnmntAction {
	
	
	 public AnnmntActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{
		AnnouncementDAO boarddao=new AnnouncementDAO();
	   	Announcement boarddata=new Announcement();
	   	AnnmntActionForward forward=new AnnmntActionForward();
	   	
	   	String realFolder="";
  		String saveFolder="module/annboardupload";
  		int fileSize=5*1024*1024;
  		realFolder=request.getRealPath(saveFolder);
  		boolean result=false;

  		try{
  			MultipartRequest multi=null;
  			multi=new MultipartRequest(request,
  					realFolder,
  					fileSize,
  					"euc-kr",
  					new DefaultFileRenamePolicy()
  					);
  			
  			boarddata.setANNBOARD_NAME(multi.getParameter("ANNBOARD_NAME"));
  			boarddata.setANNBOARD_PASS(multi.getParameter("ANNBOARD_PASS"));
	   		boarddata.setANNBOARD_SUBJECT(multi.getParameter("ANNBOARD_SUBJECT"));
	   		boarddata.setANNBOARD_CONTENT(multi.getParameter("ANNBOARD_CONTENT"));
	   		boarddata.setANNBOARD_FILE(
	   				multi.getFilesystemName(
	   						(String)multi.getFileNames().nextElement()));
	   		
	   		result=boarddao.boardInsert(boarddata);
	   		
	   		if(result==false){
	   			System.out.println("게시판 등록 실패");
	   			return null;
	   		}
	   		System.out.println("게시판 등록 완료");
	   		
	   		forward.setRedirect(true);
	   		forward.setPath(request.getContextPath()+"/AnnmntList.do");
	   		return forward;
	   		
 		}catch(Exception ex){
  			ex.printStackTrace();
  		}
 		return null;
	}  	
}
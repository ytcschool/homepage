package kr.or.ytc.qnaboard.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.or.ytc.qnaboard.model.BoardBean;
import kr.or.ytc.qnaboard.model.BoardDAO;

public class BoardAddAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		BoardDAO boarddao = new BoardDAO(); //net.board.db - p.381
		BoardBean boarddata = new BoardBean(); //net.board.db - p.383
		ActionForward forward = new ActionForward();
		String realFolder="";
		String saveFolder="boardUpload";
		
		int fileSize = 5*1024*1024;
		
		realFolder=request.getRealPath(saveFolder);
		
		boolean result = false;
		try {
			MultipartRequest multi = null;
			multi = new MultipartRequest(request, 
						realFolder, 
						fileSize, 
						"euc-kr", 
						new DefaultFileRenamePolicy());
			boarddata.setBOARD_NAME(multi.getParameter("BOARD_NAME"));
			boarddata.setBOARD_PASS(multi.getParameter("BOARD_PASS"));
			boarddata.setBOARD_SUBJECT(multi.getParameter("BOARD_SUBJECT"));
			boarddata.setBOARD_CONTENT(multi.getParameter("BOARD_CONTENT"));
			boarddata.setBOARD_FILE(multi.getFilesystemName((String)multi.getFileNames().nextElement()));
			
			result = boarddao.boardInsert(boarddata);
			
			if(result==false){
				System.out.println("게시판 등록 실패");
				return null;
			}
			System.out.println("게시판 등록 완료");
			
			forward.setRedirect(true);
			forward.setPath("./BoardList.do");
			return forward;
		} catch (Exception e) {
			e.printStackTrace();
		}	
		return null;
	}

}

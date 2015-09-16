package kr.or.ytc.qnaboard.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet({ "/BoardList.do", 
	"/BoardWrite.do", 
	"/BoardAddAction.do", 
	"/BoardDelete.do", 
	"/BoardDeleteAction.do",
	"/BoardDetailAction.do",
	"/BoardModify.do",
	"/BoardModifyAction.do",
	"/BoardReplyAction.do",
	"/BoardReplyView.do"
})
public class BoardFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String RequestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = RequestURI.substring(contextPath.length());
		ActionForward forward = null;
		Action action = null;
		System.out.println(command);
		if(command.equals("/BoardWrite.do")){
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/module/notificationBoard/qna_board_write.view"); //교재 p396 86라인		
		} else if(command.equals("/BoardAddAction.do")){
			action = new BoardAddAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if(command.equals("/BoardList.do")){
			action = new BoardListAction();  // p402
			try {
				forward = action.execute(request, response);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if(command.equals("/BoardDelete.do")){
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/module/notificationBoard/qna_board_delete.view");
		} else if(command.equals("/BoardDeleteAction.do")){
			action = new BoardDeleteAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if(command.equals("/BoardDetailAction.do")) {
			action = new BoardDetailAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if(command.equals("/BoardModify.do")){
			action = new BoardModifyView();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if(command.equals("/BoardModifyAction.do")){
			action = new BoardModifyAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if(command.equals("/BoardReplyAction.do")){
			action = new BoardReplyAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if(command.equals("/BoardReplyView.do")){
			action = new BoardReplyView();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		//forward가 null이 아니면 페이지 변경(교재 86라인 참고)
		if(forward != null){
			if(forward.isRedirect()){
				response.sendRedirect(forward.getPath());
			} else {
				RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}

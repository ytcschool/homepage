package kr.or.ytc.web.annmntboard.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet({ 
		"/AnnmntWrite.do", 
		"/AnnmntModify.do",
		"/AnnmntDelete.do",
		"/AnnmntChkDelete.do",
		"/AnnmntChkDeleteAction.do",
		"/AnnmntAddAction.do",
		"/AnnmntModifyAction.do", 
		"/AnnmntDeleteAction.do", 
		"/AnnmntList.do", 
		"/AnnmntDetailAction.do", 
		 })

public class AnnmntFrontController
	extends javax.servlet.http.HttpServlet 
 	implements javax.servlet.Servlet {
	 protected void doProcess(HttpServletRequest request, HttpServletResponse response) 
	 	throws ServletException, IOException {
		 String RequestURI=request.getRequestURI();
		 String contextPath=request.getContextPath();
		 String command=RequestURI.substring(contextPath.length());
		 AnnmntActionForward forward=null;
		 AnnmntAction action=null;
		 
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		 System.out.println(command);
		 
		 
		if(command.equals("/AnnmntWrite.do")){
			forward=new AnnmntActionForward();
			forward.setRedirect(false);
			forward.setPath("/module/AnnmntBoard/ann_board_write.view");
			
		}else if(command.equals("/AnnmntDelete.do")){
			forward=new AnnmntActionForward();
			forward.setRedirect(false);
			forward.setPath("./module/AnnmntBoard/ann_board_delete.view");

		}else if(command.equals("/AnnmntChkDelete.do")){
			forward=new AnnmntActionForward();
			forward.setRedirect(false);
			forward.setPath("./module/AnnmntBoard/ann_board_chkdelete.view");
		}else if(command.equals("/AnnmntChkDeleteAction.do")){
				action = new AnnmntChkDeleteAction();
				try{
					forward=action.execute(request, response);
				}catch(Exception e){
					e.printStackTrace();
				}		
		}else if(command.equals("/AnnmntModify.do")){
			action = new AnnmntModifyView();
			try{
				forward=action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}
	 	}else if(command.equals("/AnnmntAddAction.do")){
			action  = new AnnmntAddAction();
			try {
				forward=action.execute(request, response );
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if(command.equals("/AnnmntModifyAction.do")){
			action = new AnnmntModifyAction();
			try{
				forward=action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}
			
		}else if(command.equals("/AnnmntDeleteAction.do")){
			action = new AnnmntDeleteAction();
			try{
				forward=action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}
			
		}else if(command.equals("/AnnmntList.do")){
			action = new AnnmntListAction();
			try{
				forward=action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}
		}else if(command.equals("/AnnmntDetailAction.do")){
			action = new AnnmntDetailAction();
			try{
				forward=action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		if(forward != null){
		if(forward.isRedirect()){
			response.sendRedirect(forward.getPath());
		}else{
			RequestDispatcher dispatcher=
				request.getRequestDispatcher(forward.getPath());
			dispatcher.forward(request, response);
		}
		}
	 }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
		throws ServletException, IOException {
		doProcess(request,response);
	}  	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
		throws ServletException, IOException {
		doProcess(request,response);
	}

}

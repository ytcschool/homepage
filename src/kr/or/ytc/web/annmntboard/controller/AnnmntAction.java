package kr.or.ytc.web.annmntboard.controller;

import javax.servlet.http.*;


public interface AnnmntAction {
	public AnnmntActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception;
}

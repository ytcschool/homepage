package kr.or.ytc.web.template;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet({"*.view"})
public class TemplateProcessor extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		String contextPath = request.getContextPath();
		String resource = uri.substring(contextPath.length(), uri.length() - ".view".length())
				          + ".jsp";
        System.out.println(resource);
		request.setAttribute("title", "YTC School Site");
		request.setAttribute("body", resource);
		RequestDispatcher rd = request.getRequestDispatcher("/templates/template.jsp");
		rd.include(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

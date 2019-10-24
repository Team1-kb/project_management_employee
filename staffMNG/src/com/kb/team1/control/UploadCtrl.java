package com.kb.team1.control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("*.do")
public class UploadCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public UploadCtrl() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = null;
		request.setCharacterEncoding("UTF-8");
		String reqURL = request.getRequestURI();
		String contextPath = request.getContextPath();
		String cmd = reqURL.substring(contextPath.length());

		if(cmd.equals("/uploadProc.do")){
			rd=request.getRequestDispatcher("uploadProc.jsp");
		}else if(cmd.equals("/uploadProc.do")){
			rd=request.getRequestDispatcher("uploadProc.jsp");
		}
		
		
		rd.forward(request, response);
	}

}

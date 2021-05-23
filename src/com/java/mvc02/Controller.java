package com.java.mvc02;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Controller
 */

// Front Controller Pattern : 사용자의 모든 요청의 단 하나의 서블릿이 처리하는 형태.
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controller() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Controller doGet Function");

		String uri=request.getRequestURI();
		String cmd=uri.substring(request.getContextPath().length());
		
		String view=null;
		if(cmd.equals("/write.kitri")) {
			request.setAttribute("message","글쓰기");
			view="/MVC/write.jsp";
		}else if(cmd.equals("/list.kitri")) {
			request.setAttribute("message","글목록");
			view="/MVC/list.jsp";
		}
		
		if(view!=null) {
			RequestDispatcher rd=request.getRequestDispatcher(view);
			rd.forward(request,response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

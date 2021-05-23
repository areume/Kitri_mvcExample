package com.java.mvc04;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class WriteAction implements CommandAction {

	public String actionDo(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("message","글쓰기");
		return "/MVC/write.jsp";
	}
}

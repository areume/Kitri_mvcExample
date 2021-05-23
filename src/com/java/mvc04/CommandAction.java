package com.java.mvc04;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface CommandAction {

	public abstract String actionDo(HttpServletRequest request, HttpServletResponse response);
	
}

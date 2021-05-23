package com.java.mvc07;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.mvc06.FrontController;

/**
 * Servlet implementation class AnnotationEx
 */
//@WebServlet("/annotationcnt")	// web.xml 매핑 작업하는 대신에 annotationcnt이 들어오면 이 파일을 찾는다. 매핑 내용이 들어가 있는 것.
//@WebServlet("/aaa/bbb/ccc")
@WebServlet("*.doit")
public class AnnotationEx01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AnnotationEx01() {
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		FrontController.logger.info(FrontController.logMsg);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

package com.java.mvc04;

import java.io.IOException;
import java.util.HashMap;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CommandCnt
 */

public class CommandCnt extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private HashMap<String,Object> commandMap=new HashMap<String,Object>();	// CommandAction도 되지만 최상위 클래스인 Object로 작성한다.
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommandCnt() {
        super();
    }
    
    @Override
    public void init() throws ServletException {
    	// doGet() 메소드에서 서블릿 파일명을 구분할 때, 클래스 파일이 많아지만 코드가 길어진다. Map에 키와 값으로 대입하여 키를 통해 클래스 객체를 얻어올 수 있도록 한다. 
    	
    	WriteAction write=new WriteAction();
    	commandMap.put("/write.action",write);
     	
    	ListAction list=new ListAction();
    	commandMap.put("/list.action",list);
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cmd=request.getRequestURI();
		cmd=cmd.substring(request.getContextPath().length());	// /write.action /list.action
		
		// 인터페이스를 상속받도록 해서 부모 타입으로 자식 객체를 선언할 수 있도록 한다. command pattern
		CommandAction commandaction=(CommandAction)commandMap.get(cmd);
		String view=commandaction.actionDo(request,response);
		
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

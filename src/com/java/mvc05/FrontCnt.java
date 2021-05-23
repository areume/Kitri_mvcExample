package com.java.mvc05;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Properties;
import java.util.logging.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FrontController
 */

public class FrontCnt extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	private HashMap<String,Object> commandMap=new HashMap<String,Object>();
       
	public static final Logger logger=Logger.getLogger(FrontCnt.class.getName());	// 
	public static String logMsg="logMsg===========================";
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FrontCnt() {
        super();
    }
    
    
    @Override
    public void init(ServletConfig config) throws ServletException {
    	
    	// 클래스 수가 많아지면 코드가 길어지므로 Properties를 활용한다.
    	// 값이 String 타입의 풀패키지명으로 넘어온다.
    	// 동적객체 생성 해야 한다.
    	
    	String configFile=config.getInitParameter("configFile");
    	logger.info(logMsg);
    	System.out.println(configFile);
    	
    	FileInputStream fis=null;
    	BufferedInputStream bis=null;
    	Properties pro=new Properties();
    	
    	try {
    		fis=new FileInputStream(configFile);
    		bis=new BufferedInputStream(fis,1024);
    		
    		pro.load(bis);
    		
    		
    	} catch(IOException e) {
    		e.printStackTrace();
    	} finally {
    		try {
    			if(bis!=null) bis.close();
    			if(fis!=null) fis.close();
    		} catch(IOException e) {
    			e.printStackTrace();
    		}
    	}
    	
    	Iterator<Object> keyIter=pro.keySet().iterator();
    	while(keyIter.hasNext()) {
    		String key=(String)keyIter.next();
    		String value=pro.getProperty(key);
    		logger.info(logMsg+key+"\t"+value);
    		
    		
			try {
				Class<?> handleClass = Class.forName(value);
				Object handleObj=handleClass.getDeclaredConstructor().newInstance();
	    		commandMap.put(key,handleObj);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    		
    	}
    	
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String cmd=request.getServletPath();
		//System.out.println(cmd);
		
		String view=null;
		try {
			
			Command com=(Command)commandMap.get(cmd);
			view=com.actionDo(request,response);
				
		} catch (Exception e) {
			e.printStackTrace();
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

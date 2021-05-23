package com.java.mvc06;

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

public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HashMap<String,Object> commandMap=new HashMap<String,Object>();
	
	public static final Logger logger=Logger.getLogger(FrontController.class.getName());	// 
    public static final String logMsg="logMsg-----------";
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FrontController() {
        super();
    }

    @Override
    public void init(ServletConfig config) throws ServletException {
    	
    	String configFile=config.getInitParameter("configFile");
    	logger.info(logMsg+configFile);
    	
    	String path=config.getServletContext().getRealPath(configFile);	// getServletContext() : Context는 프로젝트. 현재 프로젝트를 가져온다. getRealPath() : 서버에 올라간 진짜 경로
    	logger.info(logMsg+path);
    	// C:\areum\mvc\apache-tomcat-9.0.35\wtpwebapps\mvcExample\WEB-INF\cmdURI.properties
    	
    	FileInputStream fis=null;
    	BufferedInputStream bis=null;
    	Properties pro=new Properties();
    	
    	try {
    		fis=new FileInputStream(path);
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
    	while(keyIter.hasNext()	) {
    		String key=(String)keyIter.next();
    		String val=pro.getProperty(key);
    		logger.info(logMsg+key+"\t"+val);
    		
    		try {
    			
    			Class<?> handlerClass=Class.forName(val); // 제네릭 타입이 ?인 이유는 어떤 객체로 변환될 지 모르기때문에 ?로 지정한다.
    			Object handlerInstance=handlerClass.getDeclaredConstructor().newInstance();
    			commandMap.put(key,handlerInstance);	
    			
    		} catch(Exception e) {
    			e.printStackTrace();
    		}
    		
    	}

    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String cmd=request.getServletPath();
		logger.info(logMsg+cmd);

		String view=null;
		try {
			Command com=(Command)commandMap.get(cmd);
			view = com.proRequest(request,response);
		} catch (Throwable e) {
			// TODO Auto-generated catch block
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

package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.userbean;

public class registerServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public registerServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
	
		boolean film=request.getParameter("userInterest1")!=null?true:false;
		boolean code=request.getParameter("userInterest2")!=null?true:false;
		boolean game=request.getParameter("userInterest3")!=null?true:false;
		String gender=request.getParameter("userGender");
		
//		System.out.println("username="+request.getParameter("userName"));
//		System.out.println("userPwd="+request.getParameter("userPwd"));
//		System.out.println("gender="+gender);
//
//		System.out.println("hobbyFilm="+request.getParameter("userInterest1"));
//		System.out.println("hobbyCode="+request.getParameter("userInterest2"));
//		System.out.println("hobbyGame="+request.getParameter("userInterest3"));
//		System.out.println("film="+film);
//		System.out.println("code="+code);
//		System.out.println("game="+game);
//		
//		System.out.println("userinfo="+request.getParameter("userInfo"));
		
		if(new userbean().RegisterUser(	request.getParameter("userName"),
										request.getParameter("userPwd"),
										gender,
										film,
										code,
										game,
										request.getParameter("userInfo")))
			response.sendRedirect("success.jsp");
		else
			response.sendRedirect("fail.jsp");
	
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}

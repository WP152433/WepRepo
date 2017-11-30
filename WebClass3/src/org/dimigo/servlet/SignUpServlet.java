package org.dimigo.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dimigo.vo.UserVO;

import com.google.gson.Gson;

/**
 * Servlet implementation class SignUp
 */
@WebServlet({ "/SignUpServlet", "/signup" })
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		//login.jsp 포워딩
		RequestDispatcher rd = request.getRequestDispatcher("jsp/signup.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String nickname = request.getParameter("nickname");
		
		System.out.println(id + "," + pw + " " + name + " " + nickname);

		request.setCharacterEncoding("utf-8");
		
		response.setContentType("application/json;charset=utf-8");
		//id, pwd 정합성 체크
		

		PrintWriter out = response.getWriter();
		Gson gson = new Gson();
		
		boolean result = false;
		if (result) {
			//세션에 사용자 정보 생성

			HashMap<String, Object> map = new HashMap<>();
			map.put("msg", "success");
			System.out.println(gson.toJson(map));
			out.write(gson.toJson(map));
			RequestDispatcher rd = request.getRequestDispatcher("jsp/home.jsp");
			rd.forward(request, response);
		} else {
			HashMap<String, Object> map = new HashMap<>();
			map.put("msg", "error");
			System.out.println(gson.toJson(map));
			out.write(gson.toJson(map));
		}

		out.close();
	}

}      

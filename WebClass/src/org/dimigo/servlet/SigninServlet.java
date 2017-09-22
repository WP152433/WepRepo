/**
 * 
 */
package org.dimigo.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.google.gson.Gson;

/**
 * <pre>
 * org.dimigo.servlet
 *   |_ LoginServlet
 * 
 * 1. 개요 : 
 * 2. 작성일 : 2017. 9. 14.
 * </pre>
 * 
 * @author : Dav
 * @version : 1.0
 */
public class SigninServlet {



	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at:
		// ").append(request.getContextPath());
		// 요청데이터 처리
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		System.out.println("id: name:");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@SuppressWarnings({ "unchecked", "rawtypes" })
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String id= request.getParameter("id");
		String pwd= request.getParameter("pwd");
		System.out.printf("id : %s, pwd : %s\n", id, pwd);
	
		response.setContentType("application/json;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		/*
		 * 
		 * {
		 * 		"id" : id
		 * }
		 * 
		 */
		out.println("{");
		out.println("\"id\":" + "\"id\"");
		out.println("}");
		
		// JSON Simple Library
		JSONObject json = new JSONObject();
		json.put("id", id);
		out.write(json.toJSONString());
		
		// GSON
		HashMap<String,Object> map = new HashMap();
        map.put("id", id);
        out.write(new Gson().toJson(map));
        System.out.println(new Gson().toJson(map));
		
		out.close();
	}
}
package com.web.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test2Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Test2Servlet() {
		System.out.println("testServlet2 만듬");
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

//		response.setContentType("text/html; charset=UTF-8");
//		PrintWriter out = response.getWriter();
//		out.print("안녕하세요<br>");
//		out.print("hello");
		String uri = request.getRequestURI(); // 사용자가 들어온 uri값을뽑아냄
		// web.xml에서 설정한 서블릿 파일로 루트지정해서 uri를 자유롭게 조정이가능함
		// servlet-name servlet-mapping으로 내가 만든 서블릿 파일을 바라보게 만듬
		// 그렇게 사용자가 브라우저에 들어온 url값을 파싱하고 맵핑하여 내가 원하는 파일을 들여다 볼수있게함
		// MVC패턴중 Controller 의 역할을 해준다.
		// 브라우저는 외부고 서블릿은 내부에서 접근하는것이기 때문에 WEB-INF 에 접근이 가능한것이다
		// uri를 맵핑할때는 주의하고 substring split last_index of 사용에 주의하자

		System.out.println(uri);
		uri = uri.substring(uri.lastIndexOf("/") + 1);
		System.out.println(uri);
		String url = "/WEB-INF/views2/";
		if (uri.equals("MVC")) {
			url += "test2/test2.jsp";
		}
		System.out.println(url);
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}

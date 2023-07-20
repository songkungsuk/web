package com.web.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public TestServlet() {
		System.out.println("testServlet 만듬");
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String uri = request.getRequestURI();
		System.out.println(uri);
		int idx = uri.lastIndexOf("/");
		uri = uri.substring(idx + 1);
		String url = "/WEB-INF/views/test/";
		if (uri.equals("list")) {
			url += "test-list.jsp";
		}
		System.out.println(url);
		List<String> strList = new ArrayList<>();
		strList.add("우리");
		strList.add("지금");
		strList.add("나라");
		request.setAttribute("strList", strList);

		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
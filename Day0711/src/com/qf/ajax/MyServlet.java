package com.qf.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/MyServlet")
public class MyServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
/*		String name=req.getParameter("name");
		System.out.println(name);
		PrintWriter out	=resp.getWriter();
		out.print("欢迎使用AJAX技术");*/
		String cb=req.getParameter("cb");
		System.out.println(cb);
		String name=req.getParameter("name");
		System.out.println(name);
		PrintWriter out=resp.getWriter();
		if(cb!=null){
			//jsonp
			out.print(cb+"([\"欢迎使用ajax技术\"])");
		}
		out.close();
	}
}

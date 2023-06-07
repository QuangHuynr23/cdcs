package com.quanlysinhvien.api;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet (urlPatterns= {"/api-subject"})
public class SubjectAPI extends HttpServlet{
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) {
		
	}
	protected void doPut(HttpServletRequest req, HttpServletResponse resp) {
		
	}
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.sendRedirect(req.getContextPath() + "/admin/qldt/qlmh/list-subject");
	}
}

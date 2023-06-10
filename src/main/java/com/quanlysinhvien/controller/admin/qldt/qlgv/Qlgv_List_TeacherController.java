package com.quanlysinhvien.controller.admin.qldt.qlgv;

import com.quanlysinhvien.constant.SystemConstant;
import com.quanlysinhvien.model.TeacherModel;
import com.quanlysinhvien.model.respone.TeacherRespone;
import com.quanlysinhvien.service.ITeacherService;
import com.quanlysinhvien.util.FormUtil;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/admin/qldt/qlgv/list-teacher"})
public class Qlgv_List_TeacherController extends HttpServlet{
	@Inject
	private ITeacherService teacherService;
	/**
	 * 
	 */
	private static final long serialVersionUID = 3461613811928964367L;
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	// TODO Auto-generated method stub
		TeacherRespone teacherRespone = FormUtil.toModel(TeacherRespone.class,req);
		teacherRespone.setListResult(teacherService.findAll());
		req.setAttribute(SystemConstant.MODEL+"teacher",teacherRespone);
    	RequestDispatcher rd = req.getRequestDispatcher("/views/admin/qldt/qlgv/list-teacher.jsp");
		rd.forward(req, resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	// TODO Auto-generated method stub
    }
    
}
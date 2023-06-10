package com.quanlysinhvien.controller.admin.qlhv.hs;

import com.quanlysinhvien.constant.SystemConstant;
import com.quanlysinhvien.model.StudentModel;
import com.quanlysinhvien.service.IStudentService;
import com.quanlysinhvien.util.FormUtil;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/admin/qlhv/hs/list-student"})
public class Hoso_List_studentController extends HttpServlet{

	@Inject
	private IStudentService studentService;
	/**
	 * 
	 */
	private static final long serialVersionUID = 3461613811928964367L;
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	// TODO Auto-generated method stub
		StudentModel studentModel = FormUtil.toModel(StudentModel.class,req);
		studentModel.setListResult(studentService.findAll());
		req.setAttribute(SystemConstant.MODEL+"student",studentModel);
    	RequestDispatcher rd = req.getRequestDispatcher("/views/admin/qlsv/hs/list-student.jsp");
		rd.forward(req, resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	// TODO Auto-generated method stub
    }
    
}

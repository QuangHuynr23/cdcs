package com.quanlysinhvien.controller.admin.qldt.qlgv;

import com.quanlysinhvien.constant.SystemConstant;
import com.quanlysinhvien.model.DepartmentModel;
import com.quanlysinhvien.model.TeacherModel;
import com.quanlysinhvien.service.IDepartmentService;
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

@WebServlet(urlPatterns = {"/admin/qldt/qlgv/add-teacher"})
public class Qlgv_Add_TeacherController extends HttpServlet{
 	@Inject
	private ITeacherService teacherService;

	@Inject
	private IDepartmentService departmentService;


	/**
	 * 
	 */
	private static final long serialVersionUID = 3461613811928964367L;
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	// TODO Auto-generated method stub
		DepartmentModel departmentModel = new DepartmentModel();
		departmentModel.setListResult(departmentService.findAll());
		req.setAttribute(SystemConstant.MODEL+"department",departmentModel );
    	RequestDispatcher rd = req.getRequestDispatcher("/views/admin/qldt/qlgv/add-teacher.jsp");
		rd.forward(req, resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	// TODO Auto-generated method stub
		req.setCharacterEncoding("UTF-8");
		TeacherModel teacherModel = FormUtil.toModel(TeacherModel.class,req);
		teacherService.insert(teacherModel);
		resp.sendRedirect(req.getContextPath() + "/admin/qldt/qlgv/add-teacher");
    }
    
}
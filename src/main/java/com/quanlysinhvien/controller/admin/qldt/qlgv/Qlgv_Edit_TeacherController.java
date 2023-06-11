package com.quanlysinhvien.controller.admin.qldt.qlgv;

import com.quanlysinhvien.dao.impl.DepartmentDAO;
import com.quanlysinhvien.dao.impl.TeacherDAO;
import com.quanlysinhvien.model.TeacherModel;
import com.quanlysinhvien.service.ITeacherService;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/admin/qldt/qlgv/edit-teacher"})
public class Qlgv_Edit_TeacherController extends HttpServlet{
	private TeacherDAO teacherDAO;
	private DepartmentDAO departmentDAO;

	@Override
	public void init() throws ServletException {
		this.teacherDAO = new TeacherDAO();
		this.departmentDAO = new DepartmentDAO();
	}

	/**
	 * 
	 */
	private static final long serialVersionUID = 3461613811928964367L;
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	// TODO Auto-generated method stub
		Long id = Long.parseLong(req.getParameter("id"));
		TeacherModel teacherModel = teacherDAO.findById(id);
		req.setAttribute("teacher", teacherModel);
		req.setAttribute("departments", departmentDAO.findAll());
    	RequestDispatcher rd = req.getRequestDispatcher("/views/admin/qldt/qlgv/edit-teacher.jsp");
		rd.forward(req, resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	// TODO Auto-generated method stub
    }
    
}
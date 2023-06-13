package com.quanlysinhvien.controller.admin.qlhv.hs;

import com.quanlysinhvien.dao.impl.StudentDAO;
import com.quanlysinhvien.model.StudentModel;
import com.quanlysinhvien.model.TeacherModel;
import com.quanlysinhvien.util.FormUtil;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet(urlPatterns = {"/admin/qlhv/hs/add-student"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
		maxFileSize = 1024 * 1024 * 10, // 10 MB
		maxRequestSize = 1024 * 1024 * 100 // 100 MB
)
public class Hoso_Add_studentController extends HttpServlet{
	private static final String LOCATION_RELATIVE_SAVE = "/template/upload/student/";
	private static final String LOCATION_ROOT_SAVE = "/home/cuongpham/Desktop/ExternalProject/cdcs/src/main/webapp";
	private StudentDAO studentDAO = new StudentDAO();
	/**
	 * 
	 */
	private static final long serialVersionUID = 3461613811928964367L;
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	// TODO Auto-generated method stub
    	RequestDispatcher rd = req.getRequestDispatcher("/views/admin/qlsv/hs/add-student.jsp");
		rd.forward(req, resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	// TODO Auto-generated method stub
    }
    
}

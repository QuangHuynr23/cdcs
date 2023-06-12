package com.quanlysinhvien.controller.admin.qldt.qlgv;

import com.quanlysinhvien.dao.impl.DepartmentDAO;
import com.quanlysinhvien.dao.impl.TeacherDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/admin/qldt/qlgv/delete-teacher"})
public class DeleteTeacherController extends HttpServlet {
    private TeacherDAO teacherDAO;
    @Override
    public void init() throws ServletException {
        this.teacherDAO = new TeacherDAO();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        long id = Long.parseLong(req.getParameter("id"));
        teacherDAO.delete(id);
        resp.sendRedirect(req.getContextPath() + "/admin/qldt/qlgv/list-teacher");
    }
}

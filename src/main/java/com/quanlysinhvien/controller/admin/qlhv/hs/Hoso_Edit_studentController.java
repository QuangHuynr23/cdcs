package com.quanlysinhvien.controller.admin.qlhv.hs;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/admin/qlhv/hs/edit-student"})
public class Hoso_Edit_studentController {

    /**
     *
     */
    private static final long serialVersionUID = 3461613811928964367L;
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // TODO Auto-generated method stub
        RequestDispatcher rd = req.getRequestDispatcher("/views/admin/qlsv/hs/edit-student.jsp");
        rd.forward(req, resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // TODO Auto-generated method stub
    }

}

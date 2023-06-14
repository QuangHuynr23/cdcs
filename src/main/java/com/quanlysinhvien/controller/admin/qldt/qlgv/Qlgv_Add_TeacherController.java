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
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet(urlPatterns = {"/admin/qldt/qlgv/add-teacher"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
        maxFileSize = 1024 * 1024 * 10, // 10 MB
        maxRequestSize = 1024 * 1024 * 100 // 100 MB
)
public class Qlgv_Add_TeacherController extends HttpServlet {
    @Inject
    private ITeacherService teacherService;

    @Inject
    private IDepartmentService departmentService;

    private static final String LOCATION_RELATIVE_SAVE = "/template/upload/teacher/";
    private static final String LOCATION_ROOT_SAVE = "/home/cuongpham/Desktop/ExternalProject/cdcs/src/main/webapp";


    /**
     *
     */
    private static final long serialVersionUID = 3461613811928964367L;

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // TODO Auto-generated method stub
        DepartmentModel departmentModel = new DepartmentModel();
        departmentModel.setListResult(departmentService.findAll());
        req.setAttribute(SystemConstant.MODEL + "department", departmentModel);
        RequestDispatcher rd = req.getRequestDispatcher("/views/admin/qldt/qlgv/add-teacher.jsp");
        rd.forward(req, resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // TODO Auto-generated method stub
        if (req.getPart("file") == null || req.getPart("file").getSize() == 0) {
            req.setAttribute("status", "faile");
            RequestDispatcher rd = req.getRequestDispatcher("/views/admin/qldt/qlgv/add-teacher.jsp");
            rd.forward(req, resp);
            return;
        }
        Part filePart = req.getPart("file");
        String fileName = LOCATION_RELATIVE_SAVE + filePart.getSubmittedFileName();
        for (Part part : req.getParts()) {
            part.write(LOCATION_ROOT_SAVE + fileName);
        }
        req.setCharacterEncoding("UTF-8");
        TeacherModel teacherModel = FormUtil.toModel(TeacherModel.class, req);
        teacherModel.setImage(fileName);
        teacherService.insert(teacherModel);

        req.setAttribute("status", "success");
        RequestDispatcher rd = req.getRequestDispatcher("/views/admin/qldt/qlgv/add-teacher.jsp");
        rd.forward(req, resp);
    }

}
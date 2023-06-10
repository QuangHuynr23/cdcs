package com.quanlysinhvien.api;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.quanlysinhvien.model.SubjectModel;
import com.quanlysinhvien.service.ISubjectService;
import com.quanlysinhvien.util.HttpUtil;
@WebServlet (urlPatterns= {"/api-subject"})
public class SubjectAPI extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Inject
	private ISubjectService subjectService;
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setCharacterEncoding("UTF-8");//Chỉnh sửa phông trả về
		resp.setContentType("application/json");// server trả kq về client để client hiểu được
// convert tu json chuyen thanh SubjectModel
//		subjectModel = subjectService.d;


	}
	protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		resp.setCharacterEncoding("UTF-8");//Chỉnh sửa phông trả về
		resp.setContentType("application/json");// server trả kq về client để client hiểu được
		SubjectModel updateSubject = HttpUtil.of(req.getReader()).toModel(SubjectModel.class);
		subjectService.update(updateSubject);
		mapper.writeValue(resp.getOutputStream(),updateSubject);//Chuyen tu SubjectModel thanh chuoi

	}
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();	
		resp.setCharacterEncoding("UTF-8");//Chỉnh sửa phông trả về
		resp.setContentType("application/json");// server trả kq về client để client hiểu được
		SubjectModel subjectModel = HttpUtil.of(req.getReader()).toModel(SubjectModel.class);// convert tu json chuyen thanh SubjectModel
		subjectService.delete(subjectModel.getId());
		mapper.writeValue(resp.getOutputStream(),subjectModel);//Chuyen tu SubjectModel thanh chuoi


	}
}

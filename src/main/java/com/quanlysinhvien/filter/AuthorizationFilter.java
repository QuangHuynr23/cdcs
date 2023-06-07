package com.quanlysinhvien.filter;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.quanlysinhvien.constant.SystemConstant;
import com.quanlysinhvien.model.UserModel;
import com.quanlysinhvien.service.IRoleService;
import com.quanlysinhvien.util.SessionUtil;

public class AuthorizationFilter implements Filter{

	private ServletContext context;
	
	@Inject
	private IRoleService roleService;
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		this.setContext(filterConfig.getServletContext());
	}

	@Override
	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpServletRequest request = (HttpServletRequest) servletRequest;
		HttpServletResponse response = (HttpServletResponse) servletResponse;
		String url = request.getRequestURI();
		if(url.contains("/admin")) {
			UserModel model =(UserModel) SessionUtil.getInstance().getValue(request,"USERMODEL");
			if (model != null) {
				if (roleService.findByRoleId(model.getRolesid()).getRole_name().equals(SystemConstant.ADMIN)) {
					chain.doFilter(servletRequest, servletResponse);
				} else if (roleService.findByRoleId(model.getRolesid()).getRole_name().equals(SystemConstant.TEACHER)) {
					response.sendRedirect(request.getContextPath()+"/dang-nhap");
				}		
			}else {
				response.sendRedirect(request.getContextPath()+"/dang-nhap?action=login");
			}
		}
		else {
			chain.doFilter(servletRequest, servletResponse);
		}
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	public ServletContext getContext() {
		return context;
	}

	public void setContext(ServletContext context) {
		this.context = context;
	}
	
}
package com.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import com.bean.Admin;


public class AdminFilter implements Filter{

	@Override
	public void doFilter(ServletRequest request, 
			ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpServletRequest req=(HttpServletRequest)request;
		HttpSession session=req.getSession();
		Admin admin=(Admin)session.getAttribute("admin");
		if(admin!=null) {
		    chain.doFilter(request, response);//继续向下运行
		}else {
			String path=req.getServletPath();
			if(path.endsWith("adminLogin.jsp") || path.endsWith("adminLogin")) {
				chain.doFilter(request, response);
			}else {
				JOptionPane.showMessageDialog(null,"请先登录！");
				req.getRequestDispatcher("adminLogin.jsp").
				forward(request, response);
			}
		}
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}

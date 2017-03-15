package wtyw.worklite.common;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Sessiontest implements Filter{

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest request=(HttpServletRequest)req;
		HttpServletResponse response =(HttpServletResponse)res;
		System.out.println(((HttpServletRequest)req).getServletPath());
		chain.doFilter(req, res);
		if ((((HttpServletRequest)req).getServletPath()).equals("/worklite_user_login.jsp")||((HttpServletRequest)req).getServletPath().equals("")) {
		}
		System.out.println(request.getContextPath());
		if(request.getSession().getAttribute("userid")==null){
			System.out.println(request.getContextPath());
			response.sendRedirect(request.getContextPath()+"/worklite_user_login.jsp");
		}
		chain.doFilter(req, res);
		
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}
	
	
}
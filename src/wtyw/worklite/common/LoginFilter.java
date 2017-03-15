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

import org.apache.commons.lang.StringUtils;
import org.apache.struts2.ServletActionContext;

public class LoginFilter implements Filter {
	 private HttpServletRequest request;
	 private HttpServletResponse response;
	 private String excludedPages1;
	 private String excludedPages2;
	 private String excludedPages3;
	 private String excludedPages4;
	 private String[] pagepath;
	 
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
		
	}

	@Override
	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse,
			FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		
	    this.request = (HttpServletRequest) servletRequest;
        this.response = ((HttpServletResponse) servletResponse);
		String userid=(String)request.getSession().getAttribute("userid");
		String username=(String)request.getSession().getAttribute("username");
		request.getSession().setMaxInactiveInterval(60*60);
		String servletpath=request.getServletPath();
		System.out.println("用户id："+userid+",用户姓名:"+username+",访问页面"+servletpath+"!");
		if ("/user!register".equals(servletpath)||"/worklite_user_register.jsp".equals(servletpath)||"/login!loginOut".equals(servletpath)||"/login_redirect.jsp".equals(servletpath)||"/login!login".equals(servletpath)||"/worklite_user_login.jsp".equals(servletpath)||servletpath.endsWith(".css")||servletpath.endsWith(".CSS")||servletpath.endsWith(".js")||servletpath.endsWith(".jpg")||servletpath.endsWith(".gif")||servletpath.endsWith(".png")) {
			System.out.println("该页面属于不拦截页面，通过！");
			chain.doFilter(request, response);
		}else {
			if (userid==null||("").equals(userid)) {
				System.out.println("Session丢失，重定向到登录页面！");
				response.sendRedirect("/worklite/login_redirect.jsp");
			}else {
				chain.doFilter(request, response);
			}
		}
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}

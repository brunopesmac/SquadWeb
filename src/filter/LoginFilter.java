package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Usuario;

//@WebFilter("/controller.do")
public class LoginFilter implements Filter {

	FilterConfig filterConfig = null;

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();
		String path = req.getContextPath();
		String uri = req.getRequestURI();
		String comando = req.getParameter("command");
		Usuario user = (Usuario)session.getAttribute("logado");
		ServletContext servletContext = filterConfig.getServletContext();
		
		if(comando == null)
			comando = "";
		
		//COLOCAR AS TELAS NO FILTRO!
		
		if (user == null && !uri.equals(path + "/index.jsp") && !comando.equals("LoginUsuario")) 
			((HttpServletResponse) response).sendRedirect(path + "/index.jsp");
		else if(user != null && user.getTipo() == 1) 
		{
			System.out.println("empregado tipo " + user.getTipo());
			((HttpServletResponse) response).sendRedirect(path + "/sempermissao.jsp");
		}
		else if(user != null && user.getTipo() == 2) 
		{
			System.out.println("empregado tipo " + user.getTipo());
			((HttpServletResponse) response).sendRedirect(path + "/sempermissao.jsp");
		}
		else if(user != null && user.getTipo() == 3) 
		{
			System.out.println("empregado tipo " + user.getTipo());
			((HttpServletResponse) response).sendRedirect(path + "/sempermissao.jsp");
		}
		else 
			chain.doFilter(request, response);
	}
	
	public void init(FilterConfig fConfig) throws ServletException {
		this.filterConfig = fConfig;
	}

}

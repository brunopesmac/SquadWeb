package controller;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import dao.ConnectionFactory;



@WebServlet("/FrontController")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public FrontController() {
        super();
    }

    protected void doExecute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	try {
    		System.out.println("front controller"); request.setCharacterEncoding("UTF-8");
    		Command command = (Command) Class.forName("command." + request.getParameter("command")) .getDeclaredConstructor().newInstance();
    		command.executar(request, response);
    		} catch (InstantiationException | IllegalAccessException | NoSuchMethodException | ClassNotFoundException | InvocationTargetException e) {
    			e.printStackTrace(); throw new ServletException(e);
    		} 
    	} 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doExecute(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doExecute(request, response);
	}
	@Override
	public void init(){
		try {
			ConnectionFactory.obtemConexao();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public void destroy(){
		try {
			ConnectionFactory.fechar();
		} catch (SQLException e) {
			e.printStackTrace();
		}
}
}

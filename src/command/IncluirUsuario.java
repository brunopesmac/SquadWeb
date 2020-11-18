package command;

import java.io.IOException;
import java.text.ParseException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Usuario;
import service.UsuarioService;



public class IncluirUsuario implements Command {

	@Override
	public void executar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String nome = request.getParameter("nome");
		long cpf = Long.parseLong(request.getParameter("cpf"));
		long fone = Long.parseLong(request.getParameter("fone")); 
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		String email = request.getParameter("email");
		String tipoRD = request.getParameter("tipo");
		
		int tipo=0;
		if(tipoRD.equals("Remetente")) {
			tipo=2;
		}else if (tipoRD.equals("Destinatário")) {
			tipo=3;
		}else
			tipo=1;
		
		Usuario usuario = new Usuario(nome, login, senha,email,cpf,fone,tipo);
		UsuarioService us = new UsuarioService();
		RequestDispatcher view = null;
		HttpSession session = request.getSession();
		
		try {
			us.incluir(usuario);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		session.setAttribute("usuario", usuario);
		view = request.getRequestDispatcher("index.jsp");
		view.forward(request, response);

	}

}

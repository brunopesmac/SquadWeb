package command;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Login;
import model.Usuario;
import service.LoginService;
import service.UsuarioService;

public class LoginUsuario implements Command {

	@Override
	public void executar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String pUser = request.getParameter("usuario");
		String pPsw = request.getParameter("senha");
		
		Login login= new Login(pUser, pPsw);		
		LoginService ls = new LoginService();
		ls.validacao(login);
		UsuarioService us = new UsuarioService();
		Usuario usuario= us.carregar(login.getId());
		
		if(usuario.getTipo() == 1) {
			HttpSession sessionOp = request.getSession();
			sessionOp.setAttribute("logado", usuario);
			request.setAttribute("Administrador", usuario);
			RequestDispatcher view = request.getRequestDispatcher("tela_admin.jsp");
			view.forward(request, response);
			System.out.println("Administrador(a) "+usuario.getNome()+" logou");

		
		}else if(usuario.getTipo() == 2) {
			HttpSession sessionEs = request.getSession();
			sessionEs.setAttribute("logado", usuario);
			request.setAttribute("Remetente", usuario);
			RequestDispatcher view = request.getRequestDispatcher("teka_remetente.jsp");
			view.forward(request, response);
			System.out.println("Remetente "+usuario.getNome()+" logou");
			
		}else if(usuario.getTipo() == 3) {
			HttpSession sessionEs = request.getSession();
			sessionEs.setAttribute("logado", usuario);
			request.setAttribute("Destinatario", usuario);
			RequestDispatcher view = request.getRequestDispatcher("tela_destinatario.jsp");
			view.forward(request, response);
			System.out.println("Destinatario "+usuario.getNome()+" logou");
			
		}else {
			RequestDispatcher view = request.getRequestDispatcher("index.jsp");
			view.forward(request, response);
		}

	}


}
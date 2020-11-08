package service;
import java.text.ParseException;

import dao.UsuarioDAO;
import model.Usuario;

public class UsuarioService {
	private UsuarioDAO dao;
	
	public UsuarioService() {
		 dao = new UsuarioDAO();
	}
	
	public Usuario incluir(Usuario usuario) throws ParseException {
		return dao.incluir(usuario);
	}
	
	public void atualizar(Usuario usuario) {
		dao.atualizar(usuario);
	}
	
	public void excluir(int id) {
		dao.excluir(id);
	}
	
	public Usuario carregar(int id) {
		return dao.carregar(id);
	} 
}

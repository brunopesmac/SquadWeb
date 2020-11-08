package service;

import dao.PedidoDAO;
import model.Pedido;

public class PedidoService {
	private PedidoDAO dao;
	
	public PedidoService() {
		dao = new PedidoDAO();
	}
	
	public Pedido incluir (Pedido ped) throws java.text.ParseException {
		return dao.incluir(ped);
	}
	
	public void atualizar(Pedido ped) {
		dao.atualizar(ped);
	}
	
	public void excluir (Pedido ped) {
		dao.excluir(ped.getId());
	}
	
	public void carregar (int id) {
		dao.carregar(id);
	}
}

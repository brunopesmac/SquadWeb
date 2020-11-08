package model;

public class Pedido {
	
		int id, idRem,idDes;
		String descricao;
		
		public Pedido(int id,String descricao, int idRem, int idDes) {
			this.id=id;
			this.descricao=descricao;
			this.idDes=idDes;
			this.idRem=idRem;
		}
		public Pedido(int id) {
			this.id=id;
		}
		public Pedido() {}
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getDescricao() {
			return descricao;
		}
		public void setDescricao(String descricao) {
			this.descricao = descricao;
		}
		public int getIdRem() {
			return idRem;
		}
		public void setIdRem(int idRem) {
			this.idRem = idRem;
		}
		public int getIdDes() {
			return idDes;
		}
		public void setIdDes(int idDes) {
			this.idDes = idDes;
		}
		@Override
		public String toString() {
			return "Pedido [id=" + getId() + ", descricao=" + getDescricao() +", id Destinatario="+ getIdDes() +", id Remetente="+getIdRem() +"]";
		}
}

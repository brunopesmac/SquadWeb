package model;

public class Usuario {
	private int cod;
	private String nome, login, senha;
	private int cpf, fone, tipo;
	public Usuario(int cod, String nome, String login, String senha, int cpf, int fone, int tipo) {
		super();
		this.cod = cod;
		this.nome = nome;
		this.login = login;
		this.senha = senha;
		this.cpf = cpf;
		this.fone = fone;
		this.tipo = tipo;
	}

	public Usuario(int cod) {
		this.cod=cod;
	}
	public Usuario() {}
	
	public int getCod() {
		return cod;
	}
	public void setCod(int cod) {
		this.cod = cod;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public int getCpf() {
		return cpf;
	}
	public void setCpf(int cpf) {
		this.cpf = cpf;
	}
	public int getFone() {
		return fone;
	}
	public void setFone(int fone) {
		this.fone = fone;
	}
	public int getTipo() {
		return tipo;
	}
	public void setTipo(int tipo) {
		this.tipo = tipo;
	}
	@Override
	public String toString() {
		return "Usuario [cod=" + cod + ", nome=" + nome + ", login=" + login + ", senha=" + senha + ", cpf=" + cpf
				+ ", fone=" + fone + ", tipo=" + tipo + "]";
	}
	
}

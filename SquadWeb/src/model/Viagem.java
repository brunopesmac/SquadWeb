package model;

public class Viagem {
	
	int id;
	String partida;
	String chegada;
	
	public Viagem(int id,String partida, String chegada) {
		this.id=id;
		this.partida=partida;
		this.chegada=chegada;
	}
	public Viagem (int id) {
		this.id=id;
	}
	public Viagem() {}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPartida() {
		return partida;
	}
	public void setPartida(String partida) {
		this.partida = partida;
	}
	public String getChegada() {
		return chegada;
	}
	public void setChegada(String chegada) {
		this.chegada = chegada;
	}
	@Override
	public String toString() {
		return "Viagem [id=" + getId() + ", partida=" + getPartida() +", chegada=" + getChegada() + "]";
	}
}

package model;

import java.util.ArrayList;

public class Viagem {
	
	private int id;
	private String partida, chegada;
	private ArrayList<String> pontos = new ArrayList<String>();
	
	public Viagem(int id, String partida, String chegada, ArrayList<String> pontos) {
		this.id = id;
		this.partida = partida;
		this.chegada = chegada;
		this.pontos = pontos;
	}

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

	public ArrayList<String> getPontos() {
		return pontos;
	}

	public void setPontos(ArrayList<String> pontos) {
		this.pontos = pontos;
	}

	@Override
	public String toString() {
		return "Viagem [id=" + id + ", partida=" + partida + ", chegada=" + chegada + ", pontos=" + pontos.toString() + "]";
	}
	
	
}

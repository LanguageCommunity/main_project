package user;

import java.util.Date;

public class Professor extends Usuario {

private double valGratificacao;
private byte certificacao;

	public Professor(String nome, Date dataNascimento, String sexualidade, String endereco, String descricao,
			   	 	 String idiomaConhecimento, String interesse, int numero, String email, String senha,
			   	 	 byte fotoPerfil, int tipoConta, double valGratificacao, byte certificacao) {
		
		
		super(nome, dataNascimento, sexualidade, endereco, descricao, idiomaConhecimento, interesse, numero,
				email, senha, fotoPerfil, tipoConta);
		
		setValGratificacao(valGratificacao);
		setCertificacao(certificacao);
	}
	
	// getters e setters
	
	public double getValGratificacao() {
		return valGratificacao;
	}

	public void setValGratificacao(double valGratificacao) {
		this.valGratificacao = valGratificacao;
	}

	public byte getCertificacao() {
		return certificacao;
	}

	public void setCertificacao(byte certificacao) {
		this.certificacao = certificacao;
	}
}

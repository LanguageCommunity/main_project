package user;

import java.util.Date;

public class Professor extends Usuario {

private long valGratificacao;
private byte certificacao;

	public Professor(String nome, Date dataNascimento, String sexualidade, String endereco, String descricao,
			   	 	 String idiomaConhecimento, String interesse, int numero, String email, String senha,
			   	 	 byte fotoPerfil, long avaliacao, boolean tipoConta, long valGratificacao, byte certificacao) {
		
		
		super(nome, dataNascimento, sexualidade, endereco, descricao, idiomaConhecimento, interesse, numero,
				email, senha, fotoPerfil, avaliacao, tipoConta);
		
		setValGratificacao(valGratificacao);
		setCertificacao(certificacao);
	}

	public long getValGratificacao() {
		return valGratificacao;
	}

	public void setValGratificacao(long valGratificacao) {
		this.valGratificacao = valGratificacao;
	}

	public byte getCertificacao() {
		return certificacao;
	}

	public void setCertificacao(byte certificacao) {
		this.certificacao = certificacao;
	}
}

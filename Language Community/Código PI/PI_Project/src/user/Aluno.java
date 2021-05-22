package user;

import java.util.Date;

public class Aluno extends Usuario {

private String idiomaInteresse;
private String nivelIdioma;

	public Aluno(String nome, Date dataNascimento, String sexualidade, String endereco, String descricao,
			   String idiomaConhecimento, String interesse, int numero, String email, String senha,
			   byte fotoPerfil, int tipoConta, String idiomaInteresse, String nivelIdioma) {
		
		super(nome, dataNascimento, sexualidade, endereco, descricao, idiomaConhecimento, interesse, numero,
				email, senha, fotoPerfil, tipoConta);
		
		setIdiomaInteresse(idiomaInteresse);
		setNivelIdioma(nivelIdioma);
	}

	// getters e setters
	
	public String getIdiomaInteresse() {
		return idiomaInteresse;
	}

	public void setIdiomaInteresse(String idiomaInteresse) {
		this.idiomaInteresse = idiomaInteresse;
	}

	public String getNivelIdioma() {
		return nivelIdioma;
	}

	public void setNivelIdioma(String nivelIdioma) {
		this.nivelIdioma = nivelIdioma;
	}
}
package user;

import java.util.Date;

public class Usuario implements Premium {

private String nome;
private Date dataNascimento;
private String sexualidade;
private String endereco;
private String descricao;
private String idiomaConhecimento;
private String interesse;
private int numero;
private String email;
private String senha;
private byte fotoPerfil;
private long avaliacao = 0;
private int tipoConta; // Conta 1 = Premium - Conta 0 = Normal

	public Usuario(String nome, Date dataNascimento, String sexualidade, String endereco, String descricao,
				   String idiomaConhecimento, String interesse, int numero, String email, String senha,
				   byte fotoPerfil, int tipoConta) {
	
	// setters e getters
		
		setNome(nome);
		setDataNascimento(dataNascimento);
		setSexualidade(sexualidade);
		setEndereco(endereco);
		setDescricao(descricao);
		setIdiomaConhecimento(idiomaConhecimento);
		setInteresse(interesse);
		setNumero(numero);
		setEmail(email);
		setSenha(senha);
		setFotoPerfil(fotoPerfil);
		setAssinar(tipoConta);
	}

	// Usuário metodos
	
	protected String getNome() {
		return nome;
	}

	protected void setNome(String nome) {
		this.nome = nome;
	}

	public Date getDataNascimento() {
		return dataNascimento;
	}

	public void setDataNascimento(Date dataNascimento) {
		this.dataNascimento = dataNascimento;
	}

	public String getSexualidade() {
		return sexualidade;
	}

	public void setSexualidade(String sexualidade) {
		this.sexualidade = sexualidade;
	}

	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getIdiomaConhecimento() {
		return idiomaConhecimento;
	}

	public void setIdiomaConhecimento(String idiomaConhecimento) {
		this.idiomaConhecimento = idiomaConhecimento;
	}

	public String getInteresse() {
		return interesse;
	}

	public void setInteresse(String interesse) {
		this.interesse = interesse;
	}

	public int getNumero() {
		return numero;
	}

	public void setNumero(int numero) {
		this.numero = numero;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public byte getFotoPerfil() {
		return fotoPerfil;
	}

	public void setFotoPerfil(byte fotoPerfil) {
		this.fotoPerfil = fotoPerfil;
	}

	// Premium métodos com interface
	
	@Override
	public int getAssinar() {
		return tipoConta;
	}
	
	@Override
	public void setAssinar(int tipoConta) {
		this.tipoConta = tipoConta;
	}	
	
	public long getAvaliarUsuario() {
		// Arrumar um jeito de bloquear o acesso
		return avaliacao;
	}
	
	@Override
	public void setAvaliarUsuario(long avaliacao) {
		if(tipoConta == 1) {
			this.avaliacao = avaliacao;
		} else {
			System.out.println("Tu é pobre!");
		}
	}

	@Override
	public void getAcessarFlashCards() {
		if(tipoConta == 1) {
			// http:????
		} else {
			System.out.print("Tu é pobre!");
		}
	}

	@Override
	public void getParticiparConquistasMetas() {
		if(tipoConta == 1) {
			// http:????
		} else {
			System.out.print("Tu é pobre!");
		}
	}

	@Override
	public void getVerFrequencia() {
		if(tipoConta == 1) {
			// http:????
		} else {
			System.out.print("Tu é pobre!");
		}
	}

	@Override
	public void getAcessarTopUsuarios() {
		if(tipoConta == 1) {
			// http:????
		} else {
			System.out.print("Tu é pobre!");
		}
	}
}

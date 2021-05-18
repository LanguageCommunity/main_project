package user;

import chat.*;
import forum.*;

public class Language {
	
	public static void main(String[] args) {
		// Raphael
		Aluno student01 = new Aluno("Raphael", null, null, null, null, null, null, 0, null, null, (byte) 0, 0, false, null, null);
		student01.setNome("Raphael");
		System.out.println(student01.getNome());
		Professor teacher01 = new Professor("Professor Ruy", null, null, null, null, null, null, 0, null, null, (byte) 0, 0, false, 0, (byte) 0);
		teacher01.setNome("Senhor Ruy");
		System.out.println(teacher01.getNome());
		
		// Yuri
		ConversaIndividual A =  new ConversaIndividual(true, 1, "", null, null); 
		A.setTexto("OI");
		A.setQtdNotificacao(10);
		System.out.println(A.getTexto() + A.getQtdNotificacao());
		
		// Camila
		Forum lolzinho = new Forum(true, "Yasuo foda", "Opa opa"); 
		lolzinho.setNomePostagem("Yasuo Helou");
		System.out.println(lolzinho.getNomePostagem());
	}
}
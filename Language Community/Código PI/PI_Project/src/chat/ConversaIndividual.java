package chat;

import java.util.Date;

public class ConversaIndividual extends Conversas{

    public ConversaIndividual(boolean notificacao, int qtdNotificacao, String texto, Date dataMensagem, Date horaMensagem) {
        super(notificacao, qtdNotificacao, texto, dataMensagem, horaMensagem);
    }

    public void convidarParaGrupo() {

    }
}
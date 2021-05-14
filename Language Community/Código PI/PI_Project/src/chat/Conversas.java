package Conversa;

public class Conversas {
    protected boolean notificacao;
    protected int qtdNotificacao;

    public Conversas (boolean notificacao, int qtdNotificacao) {
        setNotificacao(notificacao);
        setQtdNotificacao(qtdNotificacao);
    }

    public boolean getNotificacao() {
        return notificacao;
    }

    public void setNotificacao(boolean notificacao) {
        this.notificacao = notificacao;
    }

    public int getQtdNotificacao() {
        return qtdNotificacao;
    }

    public void setQtdNotificacao(int qtdNotificacao) {
        this.qtdNotificacao = qtdNotificacao;
    }

    public void enviarTxt(char texto) {

    }

    public void enviarAudio(byte audio) {

    }

    public void enviarFoto(byte foto) {

    }

    public void ligar() {

    }

    public byte visualizarFoto() {
        return visualizarFoto();
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package it.stevid.formazione;

/**
 *
 * @author stevid
 */
public class RegistrazioneBean {
    private String nome;
    private String cognome;
    private String datanascita;
    private String sesso;
    private String continente;
    private String news;

    public RegistrazioneBean() {
        this.nome = "";
        this.cognome = "";
        this.datanascita= "";
        this.sesso= "";
        this.continente= "EUR";
        this.news = "on";
    }

    public String getNome() {
        return nome;
    }

    public String getCognome() {
        return cognome;
    }

    public String getDatanascita() {
        return datanascita;
    }

    public String getNews() {
        return news;
    }

    public void setNews(String news) {
        this.news = news;
    }

    public String getSesso() {
        return sesso;
    }

    public String getContinente() {
        return continente;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setCognome(String cognome) {
        this.cognome = cognome;
    }

    public void setDatanascita(String datanascita) {
        this.datanascita = datanascita;
    }

    public void setSesso(String sesso) {
        this.sesso = sesso;
    }

    public void setContinente(String continente) {
        this.continente = continente;
    }
    public boolean isValid(){
        boolean valid = true;
        if( nome == null || nome.isEmpty() ){
            valid = false;
        }
        if( cognome == null || cognome.isEmpty() ){
            valid = false;
        }
        if( datanascita == null || datanascita.isEmpty() ){
            valid = false;
        }
        if( sesso == null || sesso.isEmpty() ){
            valid = false;
        }        
        
        return valid;
        
    }
}

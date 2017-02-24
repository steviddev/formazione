<%-- 
    Document   : viewRegistrationForm
    Created on : Feb 22, 2017, 5:44:54 PM
    Author     : stevid
--%>

<jsp:useBean id="registrazione" 
             class="it.stevid.formazione.RegistrazioneBean"
             scope="request"></jsp:useBean>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrazione nuovo utente</title>
    </head>
    <body>
        <h1>Risultato</h1>
        
        <form action="doRegistrazione.jsp" method="POST">
            <p><label>Nome:<input type="text" name="nome" value="${registrazione.nome}"/></label></p>
            <p><label>Cognome:<input type="text" name="cognome" value="<%= registrazione.getCognome() %>"/></label></p>
            <p><label>Data di nascita:<input type="text" name="datanascita" value="<% out.println(registrazione.getDatanascita()); %>"/></label></p>
            <p>Sesso:  <label>M<input type="radio" name="sesso" value="M"/></label>
                        <label>F<input type="radio" name="sesso" value="F"/></label></p>
            <p>Dove vivi?<select name="continente">
                    <option value="EUR">Europa</option>
                    <option value="AME">America</option>
                    <option value="ASI">Asia</option>
                    <option value="AFR">Africa</option>
                    <option value="AUS">Oceania</option>
                         </select></p>
            <p><label>Voglio ricevere la newsletter<input type="checkbox" name="news"/></label></p>
            <p><label>Note:<br><textarea name="note"></textarea></label></p>
            <p><input type="submit"</p>
        </form>        
    </body>
</html>

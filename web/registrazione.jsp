<%-- 
    Document   : registrazione
    Created on : Feb 22, 2017, 11:57:07 AM
    Author     : stevid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registraizone nuovo utente</title>
    </head>
    <body>
        <h1>Modulo di registrazione nuovo utente</h1>
        <p>Inserisci i tuoi dati nei campi sottostanti:</p>
        
        <!--form action="verificaregistrazione.jsp" method="POST"-->
        <form action="doRegistrazione.jsp" method="POST">
            <p><label>Nome:<input type="text" name="nome"/></label></p>
            <p><label>Cognome:<input type="text" name="cognome"/></label></p>
            <p><label>Data di nascita:<input type="text" name="datanascita"/></label></p>
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

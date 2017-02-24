<%-- 
    Document   : verificaregistrazione
    Created on : Feb 22, 2017, 3:44:17 PM
    Author     : stevid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Verifica Registrazione</title>
    </head>
    <body>
        <h1>verifica dei dati inseriti</h1>
        <% 
        String nome        = request.getParameter("nome");
        String cognome     = request.getParameter("cognome");
        String datanascita = request.getParameter("datanascita");
        String sesso       = request.getParameter("sesso");
        String continente  = request.getParameter("continente");
        String news        = request.getParameter("news");
        String note        = request.getParameter("note");
        boolean err = false;
        //verifica di esistenza paramentri
        if ( nome == null ||
             cognome == null || 
             datanascita == null ||
             sesso == null ||
             continente == null ||
             note == null
                ){
            %>
                <p>Errore: pagina richiamata in modo errato.</p>
                <p>torna alla pagina di registrazione <a href="registrazione.jsp">qui</a>.</p>
            <%
        }else{        
            if(nome.isEmpty()){
                out.println("<p>Errore , il nome è obbligatorio!</p>");
                err = true;
            } 
            if(sesso == null){
                out.println("<p>Errore , va selezionato il sesso obbligatoriamente</p>");
                err = true;
            }
            
            if( err){
                %>
                <p>La registrazione non è valida, <a href="registrazione.jsp">torna indietro.</a></p>
                <%
            }
            %>
                <h2>Registrazione confermata</h2>    
                <p>Riepilogo</p>
                <ul>
                    <li>Nome: <%=nome%></li>
                    <li>Cognome: <%=cognome%></li>
                    <li>Data di nascita: <%=datanascita%></li>
                    <li>Sesso: <%=sesso%></li>
                    <li>Continente: <%=continente%></li>
                </ul>
            <%
        }
        

        
        %>
    </body>
</html>

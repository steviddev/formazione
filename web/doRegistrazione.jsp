<jsp:useBean id="registrazione" 
             class="it.stevid.formazione.RegistrazioneBean"
             scope="request"></jsp:useBean>

<% 
    String nome = request.getParameter("nome");
    registrazione.setNome(nome);
    
%>

<jsp:setProperty name="registrazione" property="*"></jsp:setProperty>

<% 
    if( registrazione.isValid() ){
        //mostra il riepilogo
        %>
        <jsp:forward page="viewRegistrationWelcome.jsp"></jsp:forward>
        <%
    }else{
        %>
        <jsp:forward page="viewRegistrationForm.jsp"></jsp:forward>
        <%        
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
    <form action="executa_alterar.jsp" method="post">
        <label>Codigo:</label><br/>
        <input type="text" name="codigo" value="<%=request.getParameter("codigo")%>" /><br/> 
        
         <label>Nome:</label><br/>
        <input type="text" name="nome" value="<%=request.getParameter("nome")%>" /><br/> 
        
        <label>Data de nascimento:</label><br/>
        <input type="text" name="data_nascimento" value="<%=request.getParameter("data_nascimento")%>"/><br/>
        
        <label>Tipo do documento:</label><br/>
        <input type="text" name="tipo_documento" value="<%=request.getParameter("tipo_documento")%>"/><br/>
        
        <label>Documento:</label><br/>
        <input type="text" name="doumento" value="<%=request.getParameter("documento")%>"/><br/>
        
        <label>Tipo telefone:</label><br/>
        <input type="text" name="tipo_telefone" value="<%=request.getParameter("tipo_telefone")%>"/><br/>
        
        <label>Estado Civil:</label><br/>
        <input type="text" name="estado_civil" value="<%=request.getParameter("estado_civil")%>"/><br/>
        
        <label>Possui filhos:</label><br/>
        <input type="text" name="possui_filhos" value="<%=request.getParameter("possui_filhos")%>"/><br/>
        
        <label>Profissão:</label><br/>
        <input type="text" name="profissao" value="<%=request.getParameter("profissao")%>"/><br/>
        
        <label>Sexo:</label><br/>
        <input type="text" name="sexo" value="<%=request.getParameter("sexo")%>"/><br/>
        
        <label>Endereço:</label><br/>
        <input type="text" name="endereço" value="<%=request.getParameter("endereço")%>"/><br/>
        
        <label>Bairro:</label><br/>
        <input type="text" name="bairro" value="<%=request.getParameter("bairro")%>"/><br/>
        
        <label>Cidade:</label><br/>
        <input type="text" name="cidade" value="<%=request.getParameter("cidade")%>"/><br/>
        
        <label>CEP:</label><br/>
        <input type="text" name="cep" value="<%=request.getParameter("cep")%>"/><br/>
        
        <button type="submit">
            Ok
        </button>
    </form>
    </body>
</html>


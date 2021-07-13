<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
    <form action="executa_inserir.jsp" method="post">
        
        
        <label>Nome:</label><br/>
        <input type="text" name="nome"/><br/>
        
        
        <label>Data de nascimento:</label><br/>
        <input type="text" name="data_nascimento"/><br/>
        
        <label>Tipo do documento:</label><br/>
        <input type="text" name="tipo_documento"/><br/>
        
        <label>Documento:</label><br/>
        <input type="text" name="doumento"/><br/>
        
        <label>Tipo telefone:</label><br/>
        <input type="text" name="tipo_telefone"/><br/>
        
        <label>Estado Civil:</label><br/>
        <input type="text" name="estado_civil"/><br/>
        
        <label>Possui filhos:</label><br/>
        <input type="text" name="possui_filhos"/><br/>
        
        <label>Profissão:</label><br/>
        <input type="text" name="profissao"/><br/>
        
        <label>Sexo:</label><br/>
        <input type="text" name="sexo"/><br/>
        
        <label>Endereço:</label><br/>
        <input type="text" name="endereço"/><br/>
        
        <label>Bairro:</label><br/>
        <input type="text" name="bairro"/><br/>
        
        <label>Cidade:</label><br/>
        <input type="text" name="cidade"/><br/>
        
        <label>CEP:</label><br/>
        <input type="text" name="cep"/><br/>
        
        <button type="submit">
            Ok
        </button>
    </form>
    </body>
</html>

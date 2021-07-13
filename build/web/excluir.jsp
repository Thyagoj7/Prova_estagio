<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
    <form action="executa_excluir.jsp" method="post">
        <label>Codigo:</label><br/>
        <input type="text" name="codigo" value="<%=request.getParameter("codigo")%>" /><br/> 
        
         <label>Nome:</label><br/>
        <input type="text" name="nome" value="<%=request.getParameter("nome")%>" /><br/> 
        
       
        <button type="submit">
            Ok
        </button>
    </form>
    </body>
</html>



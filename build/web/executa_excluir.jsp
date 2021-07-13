<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Clientes"%>
<%@page import="dao.ClienteDao"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try{
                ClienteDao clidao = new ClienteDao();
                clidao.excluir(Integer.parseInt(request.getParameter("codigo")));
                response.sendRedirect("index.jsp");
            }catch(Exception erro){
                throw new RuntimeException("Erro 9" + erro);
            }
        %> 
    </body>
</html>

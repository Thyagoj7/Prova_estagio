<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Clientes" %>
<%@page import="dao.ClienteDao" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            try{
                Clientes cli = new Clientes();
                ClienteDao clidao = new ClienteDao(); 
                if(request.getParameter("nome").equals("") || request.getParameter("data_nascimento").equals("") || request.getParameter("tipo_documento").equals("") || request.getParameter("documento").equals("") || request.getParameter("tipo_telefone").equals("") || request.getParameter("estado_civil").equals("") || request.getParameter("possui_filhos").equals("") || request.getParameter("profissao").equals("") || request.getParameter("sexo").equals("") || request.getParameter("endereço").equals("") || request.getParameter("bairro").equals("") || request.getParameter("cidade").equals("") || request.getParameter("cep").equals("")){
                    response.sendRedirect("index.jsp");
                }else{
                   cli.setNome(request.getParameter("nome"));
                   cli.setData_nascimento(request.getParameter("data_nascimento"));
                   cli.setTipo_documento(request.getParameter("tipo_documento"));
                   cli.setDocumento(request.getParameter("Documento"));
                   cli.setTipo_telefone(request.getParameter("tipo_telefone"));
                   cli.setEstado_civil(request.getParameter("estado_civil"));
                   cli.setPossui_filhos(request.getParameter("possui_filhos"));
                   cli.setProfissao(request.getParameter("profissao"));
                   cli.setSexo(request.getParameter("sexo"));
                   cli.setEndereço(request.getParameter("endereço"));
                   cli.setBairro(request.getParameter("bairro"));
                   cli.setCidade(request.getParameter("cidade"));
                   cli.setCep(Integer.parseInt(request.getParameter("cep")));
                   cli.setCodigo(Integer.parseInt(request.getParameter("codigo")));
                   clidao.alterar((cli));
                   response.sendRedirect("index.jsp");
                   
                }
            }catch(Exception erro){
                throw new RuntimeException("Erro 8: " + erro);
            }
            %>
    </body>
</html>
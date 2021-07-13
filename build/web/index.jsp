<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.ClienteDao" %>
<%@page import="java.util.ArrayList" %>
<%@page import="model.Clientes" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style type="text/css">
            #label1 {
                background-color: #c0ffc1;
              }
            
            * {
                 margin: 0;
                 padding: 0;
              }
              
              #titulo {
                font-family: sans-serif;
                color: #380B61;
                margin-left: 7%;
               
              } 
              
              body{
                background-color: #F0F8FF;
                font-family: sans-serif;
                font-size: 1em;
                color: #59429d;
                margin-top: 2%;
                justify-content: center;
                
                 margin-left: 36%;
                }
                
                #novo{
                    
                font-size: 1.2em;
                background: #59429d;
                border: 0;
                margin-bottom: 1em;
                color: #ffffff;
                padding: 0.2em 0.6em;
                box-shadow: 2px 2px 2px rgba(0,0,0,0.2);
                text-shadow: 1px 1px 1px rgba(0,0,0,0.5);
                /*position: absolute;*/
                top: 90%;
                /*left: 50%;*/
                margin-right: -50%;
                transform: translate(-50%, -50%)
                }
                
        </style>
        <title>JSP Page</title>
    </head>
    <body>
        
        <div>
                <h1 id="titulo">Cadastro de Pessoas</h1>
    
        </div>    

        <form action="index.jsp" method="post">
            <label id="label1">Nome:</label><br/>
            
            <input type="text" name="nome"><br/> 
            
            <button type="submit"> 
                OK
            </button>
        </form>
        
        <%
            
            try{
                out.print("<table border='1'>");
                out.print("<tr>");
                out.print("<th>Código</th><th>Nome</th><th>Data de Nascimento</th><th>Tipo do Documento</th>");
                out.print("</tr>");
                out.print("<tr>");
                out.print("<th>Documento</th><th>Tipo do Telefone</th><th>Estado Civil</th><th>Possui filhos</th>");
                out.print("</tr>");
                out.print("<tr>");
                out.print("<th>Profissão</th><th>Sexo</th><th>Endereço</th><th>Bairro</th>");
                out.print("</tr>");
                out.print("<tr>");
                out.print("<th>Cidade</th><th>CEP</th><th>Editar</th><th>Excluir</th>");
                out.print("</tr>");
                ClienteDao clidao = new ClienteDao();
                if(request.getParameter("nome") == "" || request.getParameter("nome") == null){
                    ArrayList<Clientes> Lista = clidao.ListarTodos();
                    for(int num=0; num < Lista.size(); num++){
                        out.print("<tr>");
                        out.print("<td>"+Lista.get(num).getCodigo()+"</td>");
                        out.print("<td>"+Lista.get(num).getNome()+ "</td>");
                        out.print("<td>"+Lista.get(num).getData_nascimento()+"</td>");
                        out.print("<td>"+Lista.get(num).getTipo_documento()+"</td>");
                        out.print("<td>"+Lista.get(num).getDocumento()+"</td>");
                        out.print("<td>"+Lista.get(num).getTipo_telefone()+"</td>");
                        out.print("<td>"+Lista.get(num).getEstado_civil()+"</td>");
                        out.print("<td>"+Lista.get(num).getPossui_filhos()+"</td>");
                        out.print("<td>"+Lista.get(num).getProfissao()+"</td>");
                        out.print("<td>"+Lista.get(num).getSexo()+"</td>");
                        out.print("<td>"+Lista.get(num).getEndereço()+"</td>");
                        out.print("<td>"+Lista.get(num).getBairro()+"</td>");
                        out.print("<td>"+Lista.get(num).getCidade()+"</td>");
                        out.print("<td>"+Lista.get(num).getCep()+"</td>");
                        out.print("<td><a href='alterar.jsp?codigo="+Lista.get(num).getCodigo()+"&nome="+Lista.get(num).getNome()+"&data de nascimento="+Lista.get(num).getData_nascimento()+"&tipo de documento="+Lista.get(num).getTipo_documento()+"&documento="+Lista.get(num).getDocumento()+"&tipo de telefone="+Lista.get(num).getTipo_telefone()+"&estado civil="+Lista.get(num).getEstado_civil()+"&possui filhos="+Lista.get(num).getPossui_filhos()+"&profissao="+Lista.get(num).getProfissao()+"&sexo="+Lista.get(num).getSexo()+"&endereço="+Lista.get(num).getEndereço()+"&bairro="+Lista.get(num).getBairro()+"cidade="+Lista.get(num).getCidade()+"&cep="+Lista.get(num).getCep()+" '>Clique<a/></td>");
                        out.print("<td><a href='excluir.jsp?codigo="+Lista.get(num).getCodigo()+"&nome="+Lista.get(num).getNome()+ " '>Clique<a/></td>");  
                        out.print("</tr>");
                        
                    }
                }else{
                    ArrayList<Clientes> Lista = clidao.ListarTodosNome(request.getParameter("nome"));
                    for(int num=0; num < Lista.size(); num++){
                        out.print("<tr>");
                        out.print("<td>"+Lista.get(num).getCodigo()+"</td>");
                        out.print("<td>"+Lista.get(num).getNome()+ "</td>");
                        out.print("<td>"+Lista.get(num).getData_nascimento()+"</td>");
                        out.print("<td>"+Lista.get(num).getTipo_documento()+"</td>");
                        out.print("<td>"+Lista.get(num).getDocumento()+"</td>");
                        out.print("<td>"+Lista.get(num).getTipo_telefone()+"</td>");
                        out.print("<td>"+Lista.get(num).getEstado_civil()+"</td>");
                        out.print("<td>"+Lista.get(num).getPossui_filhos()+"</td>");
                        out.print("<td>"+Lista.get(num).getProfissao()+"</td>");
                        out.print("<td>"+Lista.get(num).getSexo()+"</td>");
                        out.print("<td>"+Lista.get(num).getEndereço()+"</td>");
                        out.print("<td>"+Lista.get(num).getBairro()+"</td>");
                        out.print("<td>"+Lista.get(num).getCidade()+"</td>");
                        out.print("<td>"+Lista.get(num).getCep()+"</td>");
                        out.print("<td><a href='alterar.jsp?codigo="+Lista.get(num).getCodigo()+"&nome="+Lista.get(num).getNome()+"&data de nascimento="+Lista.get(num).getData_nascimento()+"&tipo de documento="+Lista.get(num).getTipo_documento()+"&documento="+Lista.get(num).getDocumento()+"&tipo de telefone="+Lista.get(num).getTipo_telefone()+"&estado civil="+Lista.get(num).getEstado_civil()+"&possui filhos="+Lista.get(num).getPossui_filhos()+"&profissao="+Lista.get(num).getProfissao()+"&sexo="+Lista.get(num).getSexo()+"&endereço="+Lista.get(num).getEndereço()+"&bairro="+Lista.get(num).getBairro()+"cidade="+Lista.get(num).getCidade()+"&cep="+Lista.get(num).getCep()+" '>Clique<a/></td>");
                        out.print("<td><a href='excluir.jsp?codigo="+Lista.get(num).getCodigo()+"&nome="+Lista.get(num).getNome()+ " '>Clique<a/></td>");  
                        out.print("</tr>");
                    }
                }
                
               out.print("</table>");
            }catch(Exception erro){
                throw new RuntimeException("Erro 10: " + erro);
            }
            
        %>
    
        <a id="novo" href="inserir.jsp">NOVO</a>
    
    </body>
</html>

package dao;

import model.Clientes;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;


public class ClienteDao {
    
    private Connection conn;
    private PreparedStatement stmt;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Clientes> Lista = new ArrayList<>();
    
    public ClienteDao(){
        conn=new ConnectionFactory().getconexao();
    }
    
    public void inserir(Clientes clientes){
        String sql = "INSERT INTO clientes (nome,data_nascimento,tipo_documento,documento,tipo_telefone,estado_civil,possui_filhos,profissao,sexo,endereço,bairro,cidade,cep) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)";
        try {
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, clientes.getNome());
            stmt.setString(2, clientes.getData_nascimento());
            stmt.setString(3, clientes.getTipo_documento());
            stmt.setString(4, clientes.getDocumento());
            stmt.setString(5, clientes.getTipo_telefone());
            stmt.setString(6, clientes.getEstado_civil());
            stmt.setString(7, clientes.getPossui_filhos());
            stmt.setString(8, clientes.getProfissao());
            stmt.setString(9, clientes.getSexo());
            stmt.setString(10, clientes.getEndereço());
            stmt.setString(11,clientes.getBairro());
            stmt.setString(12, clientes.getCidade());
            stmt.setInt(13,  clientes.getCep());
            stmt.execute();
            stmt.close();
      } catch (Exception erro){
            throw new RuntimeException("Erro 2:" + erro);
        }
    }
    
    public void alterar (Clientes clientes){
        String sql = "UPDATE clientes SET nome = ?,data_nascimento = ?,tipo_documento = ?,documento = ?,tipo_telefone = ?,estado_civil = ?,possui_filhos = ?,profissao = ?,sexo = ?,endereço = ?,bairro = ?,cidade = ?,cep = ? WHERE codigo = ?";
        try {
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, clientes.getNome());
            stmt.setString(2, clientes.getData_nascimento());
            stmt.setString(3, clientes.getTipo_documento());
            stmt.setString(4, clientes.getDocumento());
            stmt.setString(5, clientes.getTipo_telefone());
            stmt.setString(6, clientes.getEstado_civil());
            stmt.setString(7, clientes.getPossui_filhos());
            stmt.setString(8, clientes.getProfissao());
            stmt.setString(9, clientes.getSexo());
            stmt.setString(10,clientes.getEndereço());
            stmt.setString(11,clientes.getBairro());
            stmt.setString(12,clientes.getCidade());
            stmt.setInt(13,   clientes.getCep());
            stmt.setInt(14,   clientes.getCodigo());
            stmt.execute();
            stmt.close();
         } catch (Exception erro){
             throw new RuntimeException("Erro 3:" + erro);
        }
    }
    
    public void excluir(int valor){
        String sql = "DELETE FROM clientes WHERE codigo = "+valor;
        try {
            st = conn.createStatement();
            st.execute(sql);
            st.close();
        } catch (Exception erro){
            throw new RuntimeException("Erro 4:" + erro);
        }
    }
     public ArrayList<Clientes> ListarTodos(){
         String sql = "SELECT * FROM clientes";
         try{
             st = conn.createStatement();
             rs = st.executeQuery(sql);
             while(rs.next()){
                 Clientes clientes = new Clientes();
                 clientes.setCodigo(rs.getInt("codigo"));
                 clientes.setNome(rs.getString("nome"));
                 clientes.setData_nascimento(rs.getString("data_nascimento"));
                 clientes.setTipo_documento(rs.getString("tipo_documento"));
                 clientes.setDocumento(rs.getString("documento"));
                 clientes.setTipo_telefone(rs.getString("tipo_telefone"));
                 clientes.setEstado_civil(rs.getString("estado_civil"));
                 clientes.setPossui_filhos(rs.getString("possui_filhos"));
                 clientes.setProfissao(rs.getString("profissao"));
                 clientes.setSexo(rs.getString("sexo"));
                 clientes.setEndereço(rs.getString("endereço"));
                 clientes.setBairro(rs.getString("bairro"));
                 clientes.setCidade(rs.getString("cidade"));
                 clientes.setCep(rs.getInt("cep"));
                 Lista.add(clientes);
             }
         }catch(Exception erro){
             throw new RuntimeException("Erro 5: " + erro);
         }
         return Lista;
     }
      public ArrayList<Clientes> ListarTodosNome( String valor){
         String sql = "SELECT * FROM clientes WHERE nome LIKE '%"+valor+"%'";
         try {
             st = conn.createStatement();
             rs = st.executeQuery(sql);
             while(rs.next()){
                 Clientes clientes = new Clientes();
                 clientes.setCodigo(rs.getInt("codigo"));
                 clientes.setNome(rs.getString("nome"));
                 clientes.setData_nascimento(rs.getString("data_nascimento"));
                 clientes.setTipo_documento(rs.getString("tipo_documento"));
                 clientes.setDocumento(rs.getString("documento"));
                 clientes.setTipo_telefone(rs.getString("tipo_telefone"));
                 clientes.setEstado_civil(rs.getString("estado_civil"));
                 clientes.setPossui_filhos(rs.getString("possui_filhos"));
                 clientes.setProfissao(rs.getString("profissao"));
                 clientes.setSexo(rs.getString("sexo"));
                 clientes.setEndereço(rs.getString("endereço"));
                 clientes.setBairro(rs.getString("bairro"));
                 clientes.setCidade(rs.getString("cidade"));
                 clientes.setCep(rs.getInt("cep"));
                 Lista.add(clientes);
             }
         } catch (Exception erro) {
             throw new RuntimeException("Erro 6:" + erro);
         }
         return Lista;
      }
}

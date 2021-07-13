package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {
    
    public Connection getconexao(){
        try{
            Class.forName("org.postgresql.Driver");
           return DriverManager.getConnection("jdbc:postgresql://localhost:5432/prova","postgres","230714");
        }catch(Exception erro){
            throw new RuntimeException("Erro 1: "+erro);
        }
    }
    
}

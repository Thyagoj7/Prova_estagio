package model;





public class Clientes {
    
    
    private int codigo;
    private String nome;
    private String data_nascimento;  /*date*/
    private String tipo_documento;   /*int*/
    private String documento;
    private String tipo_telefone;
    private String estado_civil;     /*int*/
    private String possui_filhos;
    private String profissao;
    private String sexo;            /*int*/
    private String endereço;        
    private String bairro;
    private String cidade;
    private int cep;

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getData_nascimento() {
        return data_nascimento;
    }

    public void setData_nascimento(String data_nascimento) {
        this.data_nascimento = data_nascimento;
    }

  public String getTipo_documento() {
        return tipo_documento;
    }

   public void setTipo_documento(String tipo_documento) {
        this.tipo_documento = tipo_documento;
    }

    
    public String getDocumento() {
        return documento;
    }

    public void setDocumento(String documento) {
        this.documento = documento;
    }
    
     public String getTipo_telefone() {
        return tipo_telefone;
    }

    public void setTipo_telefone(String tipo_telefone) {
        this.tipo_telefone = tipo_telefone;
    }

    public String getEstado_civil() {
        return estado_civil;
    }

    public void setEstado_civil(String estado_civil) {
        this.estado_civil = estado_civil;
    }
    
    public String getPossui_filhos() {
        return possui_filhos;
    }

    public void setPossui_filhos(String possui_filhos) {
        this.possui_filhos = possui_filhos;
    }
    
     public String getProfissao() {
        return profissao;
    }

    public void setProfissao(String profissao) {
        this.profissao = profissao;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getEndereço() {
        return endereço;
    }

    public void setEndereço(String endereço) {
        this.endereço = endereço;
    }

    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public int getCep() {
        return cep;
    }

    public void setCep(int cep) {
        this.cep = cep;
    }
    
    
}

package modelo;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Entity
@Table(name = "heroi")
@NamedQueries({
    @NamedQuery(name = "Heroi.findAll", query = "SELECT h FROM Heroi h"),
    @NamedQuery(name = "Heroi.findCat", query = "SELECT h FROM Heroi h WHERE h.categoria.codigo = :codigo"),
    @NamedQuery(name = "Heroi.findEd", query = "SELECT h FROM Heroi h WHERE h.editora.codigo = :codigo"),
    @NamedQuery(name = "Heroi.findReg", query = "SELECT h FROM Heroi h WHERE h.regiao.codigo = :codigo"),
    @NamedQuery(name = "Heroi.findByCodinome", query = "SELECT h FROM Heroi h WHERE h.codinome = :codinome"),
    @NamedQuery(name = "Heroi.findByNome", query = "SELECT h FROM Heroi h WHERE h.nome = :nome"),
    @NamedQuery(name = "Heroi.findByDescricao", query = "SELECT h FROM Heroi h WHERE h.descricao = :descricao"),
    @NamedQuery(name = "Heroi.findByFoto", query = "SELECT h FROM Heroi h WHERE h.foto = :foto"),
    @NamedQuery(name = "Heroi.findByInteligencia", query = "SELECT h FROM Heroi h WHERE h.inteligencia = :inteligencia"),
    @NamedQuery(name = "Heroi.findByForca", query = "SELECT h FROM Heroi h WHERE h.forca = :forca"),
    @NamedQuery(name = "Heroi.findByVelocidade", query = "SELECT h FROM Heroi h WHERE h.velocidade = :velocidade"),
    @NamedQuery(name = "Heroi.findByResistencia", query = "SELECT h FROM Heroi h WHERE h.resistencia = :resistencia"),
    @NamedQuery(name = "Heroi.findByProjecaoenergia", query = "SELECT h FROM Heroi h WHERE h.projecaoenergia = :projecaoenergia"),
    @NamedQuery(name = "Heroi.findByHabilidadecombate", query = "SELECT h FROM Heroi h WHERE h.habilidadecombate = :habilidadecombate")})
public class Heroi implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "codigo")
    private Integer codigo;
    @Basic(optional = false)
    @Column(name = "codinome")
    private String codinome;
    @Column(name = "nome")
    private String nome;
    @Column(name = "descricao")
    private String descricao;
    @Column(name = "foto")
    private String foto;
    @Column(name = "inteligencia")
    private Integer inteligencia;
    @Column(name = "forca")
    private Integer forca;
    @Column(name = "velocidade")
    private Integer velocidade;
    @Column(name = "resistencia")
    private Integer resistencia;
    @Column(name = "projecaoenergia")
    private Integer projecaoenergia;
    @Column(name = "habilidadecombate")
    private Integer habilidadecombate;
    @JoinColumn(name = "categoria", referencedColumnName = "codigo")
    @ManyToOne
    private Categoria categoria;
    @JoinColumn(name = "editora", referencedColumnName = "codigo")
    @ManyToOne
    private Editora editora;
    @JoinColumn(name = "regiao", referencedColumnName = "codigo")
    @ManyToOne
    private Regiao regiao;

    public Heroi() {
    }

    public Heroi(Integer codigo) {
        this.codigo = codigo;
    }

    public Heroi(Integer codigo, String codinome) {
        this.codigo = codigo;
        this.codinome = codinome;
    }

    public Integer getCodigo() {
        return codigo;
    }

    public void setCodigo(Integer codigo) {
        this.codigo = codigo;
    }

    public String getCodinome() {
        return codinome;
    }

    public void setCodinome(String codinome) {
        this.codinome = codinome;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }

    public Integer getInteligencia() {
        return inteligencia;
    }

    public void setInteligencia(Integer inteligencia) {
        this.inteligencia = inteligencia;
    }

    public Integer getForca() {
        return forca;
    }

    public void setForca(Integer forca) {
        this.forca = forca;
    }

    public Integer getVelocidade() {
        return velocidade;
    }

    public void setVelocidade(Integer velocidade) {
        this.velocidade = velocidade;
    }

    public Integer getResistencia() {
        return resistencia;
    }

    public void setResistencia(Integer resistencia) {
        this.resistencia = resistencia;
    }

    public Integer getProjecaoenergia() {
        return projecaoenergia;
    }

    public void setProjecaoenergia(Integer projecaoenergia) {
        this.projecaoenergia = projecaoenergia;
    }

    public Integer getHabilidadecombate() {
        return habilidadecombate;
    }

    public void setHabilidadecombate(Integer habilidadecombate) {
        this.habilidadecombate = habilidadecombate;
    }

    public Categoria getCategoria() {
        return categoria;
    }

    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }

    public Editora getEditora() {
        return editora;
    }

    public void setEditora(Editora editora) {
        this.editora = editora;
    }

    public Regiao getRegiao() {
        return regiao;
    }

    public void setRegiao(Regiao regiao) {
        this.regiao = regiao;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (codigo != null ? codigo.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Heroi)) {
            return false;
        }
        Heroi other = (Heroi) object;
        if ((this.codigo == null && other.codigo != null) || (this.codigo != null && !this.codigo.equals(other.codigo))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return nome;
    }
    
}

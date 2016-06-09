package modelo;

import java.io.Serializable;
import java.util.Date;
import java.text.*;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "editora")
@NamedQueries({
    @NamedQuery(name = "Editora.findAll", query = "SELECT e FROM Editora e"),
    @NamedQuery(name = "Editora.findByCodigo", query = "SELECT e FROM Editora e WHERE e.codigo = :codigo"),
    @NamedQuery(name = "Editora.findByNome", query = "SELECT e FROM Editora e WHERE e.nome = :nome"),
    @NamedQuery(name = "Editora.findByDatafundacao", query = "SELECT e FROM Editora e WHERE e.datafundacao = :datafundacao")})
public class Editora implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "codigo")
    private Integer codigo;
    @Basic(optional = false)
    @Column(name = "nome")
    private String nome;
    @Column(name = "datafundacao")
    @Temporal(TemporalType.DATE)
    private Date datafundacao;
    @OneToMany(mappedBy = "editora")
    private List<Heroi> heroiList;

    public Editora() {
    }

    public Editora(Integer codigo) {
        this.codigo = codigo;
    }

    public Editora(Integer codigo, String nome) {
        this.codigo = codigo;
        this.nome = nome;
    }

    public Integer getCodigo() {
        return codigo;
    }

    public void setCodigo(Integer codigo) {
        this.codigo = codigo;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Date getDatafundacao() {
        return datafundacao;
    }

    public void setDatafundacao(Date datafundacao) {
        this.datafundacao = datafundacao;
    }

    public List<Heroi> getHeroiList() {
        return heroiList;
    }

    public void setHeroiList(List<Heroi> heroiList) {
        this.heroiList = heroiList;
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
        if (!(object instanceof Editora)) {
            return false;
        }
        Editora other = (Editora) object;
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

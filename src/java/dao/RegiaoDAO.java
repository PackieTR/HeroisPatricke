
package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import modelo.Regiao;


public class RegiaoDAO {
    EntityManager em;
    
    public RegiaoDAO() throws Exception {
        EntityManagerFactory emf;
        emf = Conexao.getConexao();
        em = emf.createEntityManager();
    }
    
    public void incluir(Regiao obj) throws Exception {
        try {
            em.getTransaction().begin();
            em.persist(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        } finally {
            em.close();
            
        }
        
    }

     public List<Regiao> filtrar(String filtro) throws Exception {
            return em.createNamedQuery("Regiao.findFilter").setParameter("filtro",filtro + "%").getResultList();
    }

    public List<Regiao> listar() throws Exception {
        return em.createNamedQuery("Regiao.findAll").getResultList();
    }
    
    public void alterar(Regiao obj) throws Exception {
        
        try {
            em.getTransaction().begin();
            em.merge(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        } finally {
            em.close();
        }
    }
    
    public void excluir(Regiao obj) throws Exception {
        
        try {
            em.getTransaction().begin();
            em.remove(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
    }

      public Regiao buscarPorChavePrimaria(Integer x){
        return em.find(Regiao.class, x);
    }
    public void fechaEmf() {
        Conexao.closeConexao();
    }
    

}

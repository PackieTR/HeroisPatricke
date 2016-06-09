package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import modelo.Editora;


public class EditoraDAO {
    EntityManager em;
    
    public EditoraDAO() throws Exception {
        EntityManagerFactory emf;
        emf = Conexao.getConexao();
        em = emf.createEntityManager();
    }
    
    public void incluir(Editora obj) throws Exception {
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
    
     public List<Editora> filtrar(String filtro) throws Exception {
            return em.createNamedQuery("Editora.findFilter").setParameter("filtro",filtro + "%").getResultList();
    }


    public List<Editora> listar() throws Exception {
        return em.createNamedQuery("Editora.findAll").getResultList();
    }
    
    public void alterar(Editora obj) throws Exception {
        
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
    
    public void excluir(Editora obj) throws Exception {
        
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

        
      public Editora buscarPorChavePrimaria(Integer x){
        return em.find(Editora.class, x);
    }
    public void fechaEmf() {
        Conexao.closeConexao();
    }
    

}

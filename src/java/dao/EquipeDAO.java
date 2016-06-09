/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import modelo.Equipe;

/**
 *
 * @author aluno
 */
public class EquipeDAO {
    EntityManager em;
    
    public EquipeDAO() throws Exception {
        EntityManagerFactory emf;
        emf = Conexao.getConexao();
        em = emf.createEntityManager();
    }
    
    public void incluir(Equipe obj) throws Exception {
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

     public List<Equipe> filtrar(String filtro) throws Exception {
            return em.createNamedQuery("Equipe.findFilter").setParameter("filtro",filtro + "%").getResultList();
    }

    public List<Equipe> listar() throws Exception {
        return em.createNamedQuery("Equipe.findAll").getResultList();
    }
    
    public void alterar(Equipe obj) throws Exception {
        
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
    
    public void excluir(Equipe obj) throws Exception {
        
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
    
      public Equipe buscarPorChavePrimaria(Integer x){
        return em.find(Equipe.class, x);
    }

    public void fechaEmf() {
        Conexao.closeConexao();
    }
    

}

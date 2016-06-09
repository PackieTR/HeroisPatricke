package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import modelo.Heroi;

public class HeroiDAO {

    EntityManager em;

    public HeroiDAO() throws Exception {
        EntityManagerFactory emf;
        emf = Conexao.getConexao();
        em = emf.createEntityManager();
    }

    public void incluir(Heroi obj) throws Exception {
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

    public List<Heroi> listar() throws Exception {
        return em.createNamedQuery("Heroi.findAll").getResultList();
    }

    public List<Heroi> filtrar(String filtro) throws Exception {
        return em.createNamedQuery("Heroi.findFilter").setParameter("filtro", "%" + filtro + "%").getResultList();
    }

    public List<Heroi> filtrarCategoria(Integer filtro) throws Exception {
        return em.createNamedQuery("Heroi.findCat").setParameter("codigo", filtro).getResultList();
    }

    public List<Heroi> filtrarRegiao(Integer filtro) throws Exception {
        return em.createNamedQuery("Heroi.findReg").setParameter("codigo", +filtro).getResultList();
    }

    public List<Heroi> filtrarEditora(Integer filtro) throws Exception {
        return em.createNamedQuery("Heroi.findEd").setParameter("codigo", +filtro).getResultList();
    }

    public void alterar(Heroi obj) throws Exception {

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

    public void excluir(Heroi obj) throws Exception {

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

    public Heroi buscarPorChavePrimaria(Integer x) {
        return em.find(Heroi.class, x);
    }

    public void fechaEmf() {
        Conexao.closeConexao();
    }

}

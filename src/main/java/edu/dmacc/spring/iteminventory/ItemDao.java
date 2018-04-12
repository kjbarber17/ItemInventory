package edu.dmacc.spring.iteminventory;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

public class ItemDao {
EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("ItemInventory");
	
	public void insertItem(Item itemToAdd) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		em.persist(itemToAdd);
		em.getTransaction().commit();
		em.close();
	}

	public List<Item> getAllItems() {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		String q = "select i from Item i";
		TypedQuery<Item> typedQuery = em.createQuery(q,Item.class);
		List<Item> all = typedQuery.getResultList();
		return all;
	}
}

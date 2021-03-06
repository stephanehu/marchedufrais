/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package session;

import entity.OrderedProduct;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Stephane Ehu Alias RigtheousByGod 
 */
@Stateless
public class OrderedProductSessionBean extends AbstractSessionBean<OrderedProduct> {

    @PersistenceContext(unitName = "MarcheDuFraisPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public OrderedProductSessionBean() {
        super(OrderedProduct.class);
    }

    // manually created
    public List<entity.OrderedProduct> findByOrdersId(int orderId) {
        return em.createNamedQuery("OrderedProduct.findByCustomerOrderId").setParameter("customerOrderId", orderId).getResultList();
    }
}

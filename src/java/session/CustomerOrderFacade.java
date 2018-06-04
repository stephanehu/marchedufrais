
package session;

import entity.Customer;
import entity.CustomerOrder;
import javax.annotation.security.RolesAllowed;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Stephane Ehu Alias RigtheousByGod 
 */
@Stateless
public class CustomerOrderFacade extends AbstractSessionBean<CustomerOrder> {

    @PersistenceContext(unitName = "MarcheDuFraisPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public CustomerOrderFacade() {
        super(CustomerOrder.class);
    }

    // We override the find method
    public CustomerOrder find(Object id) {
        CustomerOrder order = em.find(CustomerOrder.class, id);
        em.refresh(order);
        return order;
    }

    // We allow here only one order per customer
    @RolesAllowed("WebAdmin")
    public CustomerOrder findByCustomer(Customer customer) {
        return (CustomerOrder) em.createNamedQuery("CustomerOrder.findByCustomer").setParameter("customerId", customer).getSingleResult();
    }
}

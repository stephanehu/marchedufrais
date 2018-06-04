
package session;

import entity.Product;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Stephane Ehu Alias RigtheousByGod 
 */
@Stateless
public class ProductSessionBean extends AbstractSessionBean<Product> {

    @PersistenceContext(unitName = "MarcheDuFraisPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public ProductSessionBean() {
        super(Product.class);
    }
    
}

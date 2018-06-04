
package cart;

import entity.Product;

/**
 *
 * @author Stephane Ehu Alias RigtheousByGod ane Ehu Alias RigtheousByGod
 */
public class ElectronictCartArticle {

    Product product;
    short quantity;

    public ElectronictCartArticle(Product product) {
        this.product = product;
        quantity = 1;
    }

    public Product getProduct() {
        return product;
    }

    public short getQuantity() {
        return quantity;
    }

    public void setQuantity(short quantity) {
        this.quantity = quantity;
    }

    public void incrementQuantity() {
        quantity++;
    }

    public void decrementQuantity() {
        quantity--;
    }

    public double getTotal() {
        double amount = 0;
        amount = (this.getQuantity() * product.getPrice().doubleValue());
        return amount;
    }

}
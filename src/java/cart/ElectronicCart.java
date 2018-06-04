package cart;

import entity.Product;
import java.util.*;

/**
 *
 * @author Stephane Ehu Alias RigtheousByGod 
 */
public class ElectronicCart {

    List<ElectronictCartArticle> items;
    int numberOfItems;
    double total;

    public ElectronicCart() {
        items = new ArrayList<ElectronictCartArticle>();
        numberOfItems = 0;
        total = 0;
    }

    /**
     * Adds a <code>ElectronictCartArticle</code> to the <code>ElectronicCart</code>'s
     * <code>items</code> list. If item of the specified <code>product</code>
     * already exists in shopping cart list, the quantity of that item is
     * incremented.
     *
     * @param product the <code>Product</code> that defines the type of shopping cart item
     * @see ElectronictCartArticle
     */
    public synchronized void addItem(Product product) {

        boolean newItem = true;

        for (ElectronictCartArticle scItem : items) {

            if (scItem.getProduct().getId() == product.getId()) {

                newItem = false;
                scItem.incrementQuantity();
            }
        }

        if (newItem) {
            ElectronictCartArticle scItem = new ElectronictCartArticle(product);
            items.add(scItem);
        }
    }

    /**
     * Updates the <code>ElectronictCartArticle</code> of the specified
     * <code>product</code> to the specified quantity. If '<code>0</code>'
     * is the given quantity, the <code>ElectronictCartArticle</code> is removed
     * from the <code>ElectronicCart</code>'s <code>items</code> list.
     *
     * @param product the <code>Product</code> that defines the type of shopping cart item
     * @param quantity the number which the <code>ElectronictCartArticle</code> is updated to
     * @see ElectronictCartArticle
     */
    public synchronized void update(Product product, String quantity) {

        short qty = -1;

        // cast quantity as short
        qty = Short.parseShort(quantity);

        if (qty >= 0) {

            ElectronictCartArticle item = null;

            for (ElectronictCartArticle scItem : items) {

                if (scItem.getProduct().getId() == product.getId()) {

                    if (qty != 0) {
                        // set item quantity to new value
                        scItem.setQuantity(qty);
                    } else {
                        // if quantity equals 0, save item and break
                        item = scItem;
                        break;
                    }
                }
            }

            if (item != null) {
                // remove from cart
                items.remove(item);
            }
        }
    }

    /**
     * Returns the list of <code>ShoppingCartItems</code>.
     *
     * @return the <code>items</code> list
     * @see ElectronictCartArticle
     */
    public synchronized List<ElectronictCartArticle> getItems() {

        return items;
    }

    /**
     * Returns the sum of quantities for all items maintained in shopping cart
     * <code>items</code> list.
     *
     * @return the number of items in shopping cart
     * @see ElectronictCartArticle
     */
    public synchronized int getNumberOfItems() {

        numberOfItems = 0;

        for (ElectronictCartArticle scItem : items) {

            numberOfItems += scItem.getQuantity();
        }

        return numberOfItems;
    }

    /**
     * Returns the sum of the product price multiplied by the quantity for all
     * items in shopping cart list. This is the total cost excluding the surcharge.
     *
     * @return the cost of all items times their quantities
     * @see ElectronictCartArticle
     */
    public synchronized double getSubtotal() {

        double amount = 0;

        for (ElectronictCartArticle scItem : items) {

            Product product = (Product) scItem.getProduct();
            amount += (scItem.getQuantity() * product.getPrice().doubleValue());
        }

        return amount;
    }

    /**
     * Calculates the total cost of the order. This method adds the subtotal to
     * the designated surcharge and sets the <code>total</code> instance variable
     * with the result.
     *
     * @param surcharge the designated surcharge for all orders
     * @see ElectronictCartArticle
     */
    public synchronized void calculateTotal(String surcharge) {

        double amount = 0;

        // cast surcharge as double
        double s = Double.parseDouble(surcharge);

        amount = this.getSubtotal();
        amount += s;

        total = amount;
    }

    /**
     * Returns the total cost of the order for the given
     * <code>ElectronicCart</code> instance.
     *
     * @return the cost of all items times their quantities plus surcharge
     */
    public synchronized double getTotal() {

        return total;
    }

    /**
     * Empties the shopping cart. All items are removed from the shopping cart
     * <code>items</code> list, <code>numberOfItems</code> and
     * <code>total</code> are reset to '<code>0</code>'.
     *
     * @see ElectronictCartArticle
     */
    public synchronized void clear() {
        items.clear();
        numberOfItems = 0;
        total = 0;
    }

}
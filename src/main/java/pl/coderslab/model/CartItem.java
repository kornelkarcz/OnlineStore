package pl.coderslab.model;

import java.util.Objects;

public class CartItem {

    private Integer quantity;
    private Product product;

    public CartItem() {
    }

    public CartItem(Integer quantity, Product product) {
        this.quantity = quantity;
        this.product = product;
    }

    public CartItem(Product product) {
        this.product = product;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        CartItem cartItem = (CartItem) o;
        return Objects.equals(product, cartItem.product);
    }

    @Override
    public int hashCode() {
        return Objects.hash(product);
    }

}

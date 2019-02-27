package pl.coderslab.model;

import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Component;
import org.springframework.web.context.WebApplicationContext;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@Component
@Scope(value = WebApplicationContext.SCOPE_SESSION, proxyMode = ScopedProxyMode.TARGET_CLASS)
public class Cart {

    List<CartItem> cartItems = new ArrayList<>();
    private BigDecimal sum = new BigDecimal(0.00);


    public void addToCart(CartItem cartItem) {
        cartItems.add(cartItem);
    }

    public List<CartItem> getCartItems() {
        return cartItems;
    }

    public BigDecimal calculateSum(List<CartItem> list) {

        for (CartItem temp : cartItems) {

            BigDecimal price = temp.getProduct().getPrice();
            BigDecimal quantity = BigDecimal.valueOf(temp.getQuantity());

            sum = price.multiply(quantity);
        }
        return sum;
    }

}

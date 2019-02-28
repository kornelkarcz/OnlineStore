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

        //1.Przypisujemy cenę produktu do tempSum
        BigDecimal tempSum = cartItem.getProduct().getPrice();

        //2.Przekształcamy ilość produktów na BigDecimal
        BigDecimal quantity = BigDecimal.valueOf(cartItem.getQuantity());

        //3. Mnożymy 'tempsum' przez ilość
        tempSum = tempSum.multiply(quantity);

        //4.Dodajemy tempsum do 'sum'
        sum = sum.add(tempSum);
    }

    public List<CartItem> getCartItems() {
        return cartItems;
    }

    public BigDecimal getSum() {
        return sum;
    }

    public void setSum(BigDecimal sum) {
        this.sum = sum;
    }

}

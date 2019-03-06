package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.model.Cart;
import pl.coderslab.model.CartItem;
import pl.coderslab.model.Product;
import pl.coderslab.service.ProductService;

import java.math.BigDecimal;
import java.util.List;

@Controller
@RequestMapping("/cart")
public class CartController {

    @Autowired
    private Cart cart;

    @Autowired
    private ProductService productService;

    @GetMapping("/add-to-cart/{id}/{quantity}")
    public String addToCart(@PathVariable Long id, @PathVariable Integer quantity, Model model) {

        List<Product> productList = productService.findAll();
        List<CartItem> cartItems = cart.getCartItems();
        Product fakeProduct = new Product();
        fakeProduct.setId(id);

        /**
         *Co zrobiłem, że działa?
         * 1. Override equals method w klasie Product
         * 2. Override toString() w klasie CartItem i Product
         */

        CartItem fakeCartItem = new CartItem(fakeProduct);

        if (productList.contains(fakeProduct)) {
            if (cartItems.contains(fakeCartItem)) {
                int index = cartItems.indexOf(fakeCartItem);
                CartItem foundCartItem = cartItems.get(index);
                foundCartItem.setQuantity(foundCartItem.getQuantity() + quantity);
            } else {
                cart.addToCart(new CartItem(quantity, productService.getById(id)));
            }
        }

        model.addAttribute("cart", cart);
        return "redirect:/cart/";
//        return "redirect:/product/all";
    }

    @RequestMapping("/")
    public String cart(Model model) {

        model.addAttribute("cart", cart);

        return "cart/cartItems";
    }

    @GetMapping("/remove/{id}/{quantity}")
    public String removeFromCart(@PathVariable Long id, @PathVariable Integer quantity, Model model) {

        Product product = productService.getById(id);
        List<CartItem> cartItems = cart.getCartItems();

        CartItem fakeCartItem = new CartItem(product);

        if (cartItems.contains(fakeCartItem)) {

            BigDecimal amountToSubtract = product.getPrice().multiply(BigDecimal.valueOf(quantity));
            cart.setSum(cart.getSum().subtract(amountToSubtract));
            cartItems.remove(fakeCartItem);

        } else {
            return "redirect:/";
        }

        return "redirect:/cart/";
    }

}

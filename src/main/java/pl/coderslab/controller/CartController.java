package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import pl.coderslab.model.Cart;
import pl.coderslab.model.CartItem;
import pl.coderslab.model.Product;
import pl.coderslab.service.ProductService;

import java.util.List;

@Controller
@RequestMapping("/cart")
public class CartController {

    @Autowired
    private Cart cart;

    @Autowired
    private ProductService productService;

    @GetMapping("/add-to-cart/{id}/{quantity}")
    @ResponseBody
    public String addToCart(@PathVariable Long id, @PathVariable Integer quantity, Model model) {

        List<Product> productList = productService.findAll();
        List<CartItem> cartItems = cart.getCartItems();
        Product fakeProduct = new Product();
        fakeProduct.setId(id);
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


        return "siema";
//        return "redirect:/product/all";
    }

    @RequestMapping("/cart")
    public String cart(Model model) {
        model.addAttribute("cart", cart);
        return "cart/cartItems";
    }

}

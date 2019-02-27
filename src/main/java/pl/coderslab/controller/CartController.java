package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.model.Cart;
import pl.coderslab.model.CartItem;
import pl.coderslab.model.Product;
import pl.coderslab.service.ProductService;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/cart")
@SessionAttributes("cart")
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

        model.addAttribute("cart", cart);
        return "dodales produkt do koszyka";
//        return "redirect:/product/all";
    }

    @RequestMapping("/")
    public String cart(Model model, HttpSession session) {

        Cart sessionCart = (Cart) session.getAttribute("cart");
        model.addAttribute("cart", sessionCart);
        System.out.println(sessionCart.getCartItems());

        return "cart/cartItems";
    }

}

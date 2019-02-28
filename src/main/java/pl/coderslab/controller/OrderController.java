package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.model.Cart;
import pl.coderslab.model.CartItem;

@Controller
@RequestMapping("/order")
public class OrderController {

    @Autowired
    private Cart cart;



    @RequestMapping("/")
    public String addOrder(Model model) {
        //Odbieram carta z produktami
        model.addAttribute("cart", cart);
        return "order/summary";
    }
}

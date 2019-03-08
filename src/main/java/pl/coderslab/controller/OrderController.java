package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import pl.coderslab.model.*;
import pl.coderslab.service.OrderService;
import pl.coderslab.service.ProductInOrdersService;
import pl.coderslab.service.UserService;

import javax.servlet.http.HttpSession;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

@Controller
@RequestMapping("/order")
@SessionAttributes({"sessionOrder", "logged"})
public class OrderController {

    @Autowired
    private Cart cart;

    @Autowired
    private OrderService orderService;

    @Autowired
    private ProductInOrdersService productInOrdersService;

    @Autowired
    private UserService userService;

    @RequestMapping("/")
    public String addOrder(Model model) {
        //Odbieram carta z produktami
        model.addAttribute("cart", cart);
        return "order/summary";
    }


    @RequestMapping("/pay")
    public String payForOrder(HttpSession session, Model model) {

        //Musimy przejąć nasze produkty z carta
        model.addAttribute("cart", cart);

        User sessionUser = (User)session.getAttribute("logged");
        User user = userService.findById(sessionUser.getId());

        List<CartItem> list = cart.getCartItems();

        Order order = new Order();
        order.setOrderDate(LocalDateTime.now());
        order.setUser(user);
        orderService.saveOrder(order);
        model.addAttribute("sessionOrder", order);

        for (CartItem temp : list) {
            ProductInOrder productInOrder = new ProductInOrder();
            productInOrder.setOrder(order);
            productInOrder.setProduct(temp.getProduct());
            productInOrder.setQuantity(temp.getQuantity());
            BigDecimal sum = new BigDecimal(0.00);
            productInOrder.setSum(temp.getProduct().getPrice());
            sum = sum.add(temp.getProduct().getPrice());
            productInOrder.setSum(sum.multiply(BigDecimal.valueOf(temp.getQuantity())));
            productInOrdersService.saveProductInOrder(productInOrder);
        }

        return "order/pay";
    }

    @GetMapping("/allorders")
    public String findUserOrders(HttpSession session, Model model) {
        User tempUser = (User) session.getAttribute("logged");
        List<QueryUserOrders> orders = orderService.findUserOrders(tempUser.getId());
        model.addAttribute("orders", orders);
        return "order/allorders";
    }

    @GetMapping("/allorders/{id}")
    public String getOrderDetails(@PathVariable Long id, Model model) {
        List<OrderDetails> orderDetails = orderService.findOrderDetails(id);
        model.addAttribute("orderDetails", orderDetails);

        BigDecimal orderSum = orderService.getOrderSum(id);
        model.addAttribute("orderSum", orderSum);

        return "order/details";
    }


}

package pl.coderslab.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.model.Order;
import pl.coderslab.model.Payment;
import pl.coderslab.model.User;
import pl.coderslab.service.OrderService;
import pl.coderslab.service.PaymentService;
import pl.coderslab.service.UserService;

import javax.servlet.http.HttpSession;
import java.time.LocalDateTime;

@Controller
@RequestMapping("/payment")
@SessionAttributes("sessionOrder")
public class PaymentController {

    @Autowired
    private PaymentService paymentService;

    @Autowired
    private UserService userService;

    @Autowired
    private OrderService orderService;

    @GetMapping("/success")
    @ResponseBody
    public String savePayment(HttpSession session) {

        Order sessionOrder = (Order) session.getAttribute("sessionOrder");
        Order order = orderService.findById(sessionOrder.getId());

        Payment payment = new Payment();
        payment.setOrder(order);
        payment.setPaymentDate(LocalDateTime.now());
        paymentService.savePayment(payment);

        return "You have paid for the order, congrats!";
    }
}

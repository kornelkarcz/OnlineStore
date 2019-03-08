package pl.coderslab.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.model.*;
import pl.coderslab.service.OrderService;
import pl.coderslab.service.PaymentService;
import pl.coderslab.service.UserService;

import javax.servlet.http.HttpSession;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

@Controller
@RequestMapping("/payment")
@SessionAttributes({"sessionOrder", "logged"})
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

    @GetMapping("/allpayments")
    public String findAllPayments(HttpSession session, Model model) {
        User tempUser = (User) session.getAttribute("logged");
        List<AllPayments> payments = paymentService.findAllPayments(tempUser.getId());
        model.addAttribute("payments", payments);
        return "payment/allpayments";
    }

    @GetMapping("/allpayments/{id}")
    public String getPaymentDetails(@PathVariable Long id, Model model) {
        List<PaymentDetails> paymentDetails = paymentService.getPaymentDetails(id);
        model.addAttribute("paymentDetails", paymentDetails);

        OrderDetails order = new OrderDetails();

        BigDecimal orderSum = orderService.getOrderSum(id);
        order.setSum(orderSum);
        model.addAttribute("order", order);

        return "payment/details";
    }

}

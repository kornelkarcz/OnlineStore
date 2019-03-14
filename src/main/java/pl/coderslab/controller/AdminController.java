package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.service.OrderService;
import pl.coderslab.service.PaymentService;
import pl.coderslab.service.ProductInOrdersService;
import pl.coderslab.service.UserService;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private UserService userService;

    @Autowired
    private PaymentService paymentService;

    @Autowired
    private OrderService orderService;

    @Autowired
    private ProductInOrdersService productInOrdersService;

    @GetMapping("/panel-control")
    public String getPanelControl(Model model) {
        model.addAttribute("countUser", userService.getNumberOfUsers());
        model.addAttribute("countPayments", paymentService.getNumberOfPayments());
        model.addAttribute("countOrders", orderService.getNumberOfOrders());
        model.addAttribute("sumPayments", productInOrdersService.getSumOfPayments());
        return "admin/panel";
    }
}

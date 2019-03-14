package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.repository.ProductRepository;
import pl.coderslab.service.*;

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

    @Autowired
    private ProductService productService;

    @GetMapping("/panel-control")
    public String getPanelControl(Model model) {
        model.addAttribute("countUser", userService.getNumberOfUsers());
        model.addAttribute("countPayments", paymentService.getNumberOfPayments());
        model.addAttribute("countOrders", orderService.getNumberOfOrders());
        model.addAttribute("sumPayments", productInOrdersService.getSumOfPayments());
        return "admin/panel";
    }

    @GetMapping("products")
    public String getAllProducts(Model model) {
        model.addAttribute("products", productService.findAll());
        return "admin/allproducts";
    }
}

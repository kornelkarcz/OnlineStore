package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.model.Address;
import pl.coderslab.model.FakeUser;
import pl.coderslab.model.User;
import pl.coderslab.service.AddressService;
import pl.coderslab.service.OrderService;
import pl.coderslab.service.PaymentService;
import pl.coderslab.service.UserService;
import pl.coderslab.utils.BCrypt;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/user")
@SessionAttributes("logged")
public class UserController {


    @Autowired
    private UserService userService;

    @Autowired
    private AddressService addressService;

    @Autowired
    private OrderService orderService;

    @Autowired
    private PaymentService paymentService;

    @GetMapping("/register")
    public String registerUser(Model model) {
        model.addAttribute("user", new User());
        User temp = new User();
        return "/user/register";
    }

    @PostMapping("/register")
    public String registerUser(@Valid User user, BindingResult result) {
        if (result.hasErrors()) {
            return "/register";
        }
        userService.registerUser(user);
        return "/index";
    }

    @RequestMapping("/myaccount")
    public String displayMyAccount(Model model, HttpSession session) {
        User sessionUser = (User) session.getAttribute("logged");
        Long id = sessionUser.getId();
        model.addAttribute("userOrderNumber", orderService.getNumberOfOrdersForUser(id));
        model.addAttribute("userPaymentNumber", paymentService.getNumberOfPaymentsForUser(id));
        model.addAttribute("userPaymentSum", paymentService.getTotalSumForUser(id));
        return "user/myaccount";
    }

    @GetMapping("/myaccount/details")
    public String accountDetails(Model model, HttpSession session) {
        User sessionUser = (User) session.getAttribute("logged");
        Long id = sessionUser.getId();
        model.addAttribute("userDetails", userService.getUserDetails(id));
        model.addAttribute("addressDetails", addressService.getUserAddress(id));
        return "user/userdetails";
    }

    @RequestMapping("/myaccount/add-address")
    public String addAddress(Model model) {
        model.addAttribute("address", new Address());
        return "user/add-address";
    }

    @PostMapping("/myaccount/add-address")
    public String addAddress(@Valid Address address, BindingResult result, HttpSession session) {
        if (result.hasErrors()) {
            return "user/add-address";
        } else {
            User sessionUser = (User) session.getAttribute("logged");
            addressService.saveAddress(address);
            User user = userService.findById(sessionUser.getId());
            user.setAddress(address);

            userService.registerUser(user);

            return "redirect:/";
        }
    }
}

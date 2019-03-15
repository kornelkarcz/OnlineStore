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

    @GetMapping("/myaccount/details/add-address")
    public String addAddress(Model model) {
        model.addAttribute("address", new Address());
        return "user/add-address";
    }

    @PostMapping("/myaccount/details/add-address")
    public String addAddress(@Valid Address address, BindingResult result, HttpSession session) {
        if (result.hasErrors()) {
            return "user/myaccount/details/add-address";
        } else {
            User sessionUser = (User) session.getAttribute("logged");
            addressService.saveAddress(address);
            User user = userService.findById(sessionUser.getId());
            user.setAddress(address);

            userService.registerUser(user);

            return "redirect:/user/myaccount/details";
        }
    }

    @GetMapping("/myaccount/details/edit-address/{id}")
    public String editAddress(Model model, @PathVariable Long id) {
        model.addAttribute("address", addressService.findById(id));
        return "user/edit-address";
    }

    @PostMapping("/myaccount/details/edit-address")
    public String editAddress(@Valid Address address, BindingResult result) {
        if (result.hasErrors()) {
            return "user/myaccount/details/edit-address";
        } else {
            addressService.saveAddress(address);
        }
        return "redirect:/user/myaccount/details";
    }

    @GetMapping("/myaccount/details/newpassword")
    public String newPassword() {
        return "user/newpassword";
    }

    @PostMapping("/myaccount/details/newpassword")
    public String newPassword(@RequestParam("oldPassword") String oldPassword, @RequestParam("newPassword") String newPassword,
                              @RequestParam("repeatPassword") String repeatPassword, Model model, HttpSession session) {

        User loggedUser = (User) session.getAttribute("logged");
        if (!BCrypt.checkpw(oldPassword, loggedUser.getPassword())) {
            model.addAttribute("oldwrong", "Old password doesn't match.");
            return "user/newpassword";
        }

        if (!newPassword.equals(repeatPassword)) {
            model.addAttribute("passnoteq", "Passwords don't match");
            return "user/newpassword";
        }

        loggedUser.setPassword(newPassword);
        userService.registerUser(loggedUser);
        model.addAttribute("newPassInfo", "Password has been changed.");
        return "redirect:/user/myaccount/details";
    }


}

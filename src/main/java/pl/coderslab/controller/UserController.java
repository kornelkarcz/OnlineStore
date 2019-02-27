package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.model.FakeUser;
import pl.coderslab.model.User;
import pl.coderslab.service.AddressService;
import pl.coderslab.service.UserService;
import pl.coderslab.utils.BCrypt;

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

    @GetMapping("/register")
    public String registerUser(Model model) {
        model.addAttribute("user", new User());
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

    @GetMapping("/login")
    public String loginPanel(Model model) {
        model.addAttribute("fake", new FakeUser());
        return "user/login";
    }

    @PostMapping("/login")
    public String logUser(@ModelAttribute FakeUser fakeUser, Model model) {
        List<User> userList = userService.findAll();
        User logged = new User();
        for (User user1 : userList) {
            if (fakeUser.getEmail().equals(user1.getEmail())) {
                if (BCrypt.checkpw(fakeUser.getPassword(), user1.getPassword())) {
                    logged = user1;
                    break;
                } else {
                    return "redirect:/login";
                }
            }
        }
        model.addAttribute("logged", logged);
        return "redirect:/";
    }

    @RequestMapping("/myaccount")
    public String displayMyAccount() {
        return "user/myaccount";
    }



}

package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import pl.coderslab.model.User;
import pl.coderslab.service.UserService;

import javax.validation.Valid;

@Controller
@RequestMapping("/user")
@SessionAttributes("user")
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping("/register")
    public String registerUser(Model model) {
        model.addAttribute("user", new User());
//        model.addAttribute("id", new User().getId());
        return "/user/register";
    }

    @PostMapping("/register")
    public String registerUser(@Valid User user, BindingResult result, Model model) {
        userService.registerUser(user);
        model.addAttribute("user", user);
        return "redirect:/address/register";
    }


}

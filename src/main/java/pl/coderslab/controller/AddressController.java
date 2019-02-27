package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import pl.coderslab.model.Address;
import pl.coderslab.service.AddressService;

import javax.validation.Valid;

@Controller
@RequestMapping("/address")
public class AddressController {

    @Autowired
    private AddressService addressService;

    @GetMapping("/register")
    public String addAddress(Model model) {
        model.addAttribute("address", new Address());
        return "/address/register";
    }

    @PostMapping("/register")
    @ResponseBody
    public String addAddress(@Valid Address address, BindingResult result) {
        addressService.saveAddress(address);
        return "Address registered";
    }


}

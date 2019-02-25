package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.model.LeaseProduct;
import pl.coderslab.service.CategoryService;
import pl.coderslab.service.LeaseProductService;

import javax.validation.Valid;

@Controller
@RequestMapping("/lease-product")
public class LeaseProductController {

    @Autowired
    private LeaseProductService leaseProductService;

    @Autowired
    private CategoryService categoryService;

    @GetMapping("/add")
    public String addLeaseProduct(Model model) {
        model.addAttribute("leaseProduct", new LeaseProduct());
        return "lease-product/add";
    }

    @PostMapping("/add")
    public String addLeaseProduct(@Valid LeaseProduct leaseProduct, BindingResult result) {
        leaseProductService.saveLeaseProduct(leaseProduct);
        return "redirect:/lease-product/all";
    }
}

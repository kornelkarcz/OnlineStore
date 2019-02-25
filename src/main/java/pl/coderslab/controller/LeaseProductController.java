package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.model.Category;
import pl.coderslab.model.LeaseProduct;
import pl.coderslab.service.CategoryService;
import pl.coderslab.service.LeaseProductService;

import javax.validation.Valid;
import java.util.List;

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
        return "/lease-product/add";
    }

    @PostMapping("/add")
    public String addLeaseProduct(@Valid LeaseProduct leaseProduct, BindingResult result) {
        leaseProductService.saveLeaseProduct(leaseProduct);
        return "redirect:/lease-product/all";
    }

    @GetMapping("/all")
    public String findAllLeaseProducts(Model model) {
        model.addAttribute("leaseProducts", leaseProductService.findAll());
        return "/lease-product/all";
    }

    @GetMapping("/edit/{id}")
    public String editLeaseProduct(Model model, @PathVariable Long id) {
        model.addAttribute("leaseProduct", leaseProductService.findById(id));
        return "/lease-product/edit";
    }

    @PostMapping("/edit")
    public String editLeaseProduct(@Valid LeaseProduct leaseProduct, BindingResult result) {
        leaseProductService.saveLeaseProduct(leaseProduct);
        return "redirect:/lease-product/all";
    }

    @GetMapping("/delete/{id}")
    public String deleteLeaseProduct(@PathVariable Long id) {
        leaseProductService.deleteLeaseProduct(id);
        return "redirect:/lease-product/all";
    }

    @ModelAttribute("categories")
    public List<Category> getPublishers() {
        return categoryService.findAll();
    }
}

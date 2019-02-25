package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.model.Category;
import pl.coderslab.model.Product;
import pl.coderslab.service.CategoryService;
import pl.coderslab.service.ProductService;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/product")
public class ProductController {

    @Autowired
    private ProductService productService;

    @Autowired
    private CategoryService categoryService;

    @GetMapping("/add")
    public String addProduct(Model model) {
        model.addAttribute("product", new Product());
        return "product/add";
    }

    @PostMapping("/add")
    public String addProduct(@Valid Product product, BindingResult result) {
        productService.saveProduct(product);
        return "redirect:/product/all";
    }

    @GetMapping("/all")
    public String findAllProduct(Model model) {
        model.addAttribute("products", productService.findAll());
        return "product/all";
    }

    @GetMapping("/edit/{id}")
    public String editProduct(Model model, @PathVariable Long id) {
        model.addAttribute("product", productService.getById(id));
        return "/product/edit";
    }

    @PostMapping("/edit")
    public String editProduct(@Valid Product product, BindingResult result) {
        productService.saveProduct(product);
        return "redirect:/product/all";
    }

    @GetMapping("/delete/{id}")
    public String deleteProduct(@PathVariable Long id) {
        productService.deleteProduct(id);
        return "redirect:/product/all";
    }

    @ModelAttribute("categories")
    public List<Category> getPublishers() {
        return categoryService.findAll();
    }


}

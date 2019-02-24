package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.model.Category;
import pl.coderslab.service.CategoryService;

import javax.validation.Valid;

@Controller
@RequestMapping("/category")
public class CategoryController {

    @Autowired
    private CategoryService categoryService;

    @RequestMapping("/add")
    public String addCategory(Model model) {
        model.addAttribute("category", new Category());
        return "category/add";
    }

    @PostMapping("/add")
    public String addCategory(@Valid Category category, BindingResult result) {
        //Dopisać co będzie jak będą błędy itd.
        categoryService.saveCategory(category);
        return "redirect:/category/all";
    }

    @RequestMapping("/all")
    public String getAllCategories(Model model) {
        model.addAttribute("categories", categoryService.findAll());
        return "category/all";
    }


    @RequestMapping("/edit/{id}")
    public String editCategory(Model model, @PathVariable Long id) {
        model.addAttribute("category", categoryService.findById(id));
        return "category/edit";
    }

    @PostMapping("/edit")
    public String editCategory(@Valid Category category, BindingResult result) {
        categoryService.saveCategory(category);
        return "redirect:/category/all";
    }

    @RequestMapping("/delete/{id}")
    public String deleteCategory(@PathVariable Long id) {
        categoryService.deleteCategory(id);
        return "redirect:/category/all";
    }
}

package pl.coderslab.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import pl.coderslab.model.Category;
import pl.coderslab.repository.CategoryRepository;

import java.util.List;

@Component
@Transactional
public class CategoryService {

    @Autowired
    private CategoryRepository categoryRepository;

    public void saveCategory(Category category) {
        categoryRepository.save(category);
    }

    public List<Category> findAll() {
        return categoryRepository.findAll();
    }

    public void deleteCategory(Long id) {
        categoryRepository.delete(id);
    }

    public Category findById(Long id) {
        return categoryRepository.findOne(id);
    }

}

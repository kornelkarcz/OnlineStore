package pl.coderslab.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import pl.coderslab.repository.CategoryRepository;

@Component
@Transactional
public class CategoryService {

    @Autowired
    private CategoryRepository categoryRepository;
}

package pl.coderslab.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import pl.coderslab.repository.ProductRepository;

@Component
@Transactional
public class ProductService {

    @Autowired
    private ProductRepository productRepository;

}

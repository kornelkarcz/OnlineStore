package pl.coderslab.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import pl.coderslab.model.Product;
import pl.coderslab.repository.ProductRepository;

import java.util.List;

@Component
@Transactional
public class ProductService {

    @Autowired
    private ProductRepository productRepository;

    public void saveProduct(Product product) {
        productRepository.save(product);
    }

    public Product getById(Long id) {
        return productRepository.findOne(id);
    }

    public void deleteProduct(Long id) {
        productRepository.delete(id);
    }

    public List<Product> findAll() {
        return productRepository.findAll();
    }

}

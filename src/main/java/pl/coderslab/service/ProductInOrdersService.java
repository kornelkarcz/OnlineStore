package pl.coderslab.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import pl.coderslab.model.ProductInOrder;
import pl.coderslab.repository.ProductInOrdersRepository;

import java.math.BigDecimal;

@Component
public class ProductInOrdersService {

    @Autowired
    private ProductInOrdersRepository productInOrdersRepository;

    public void saveProductInOrder(ProductInOrder productInOrder) {
        productInOrdersRepository.save(productInOrder);
    }

    public BigDecimal getSumOfPayments() {
        return productInOrdersRepository.getSumOfPayments();
    }
}

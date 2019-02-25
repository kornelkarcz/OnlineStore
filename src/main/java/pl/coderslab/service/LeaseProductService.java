package pl.coderslab.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import pl.coderslab.model.LeaseProduct;
import pl.coderslab.repository.LeaseProductRepository;

import java.util.List;

@Component
@Transactional
public class LeaseProductService {

    @Autowired
    private LeaseProductRepository leaseProductRepository;

    public void saveLeaseProduct(LeaseProduct leaseProduct) {
        leaseProductRepository.save(leaseProduct);
    }

    public void deleteLeaseProduct(Long id) {
        leaseProductRepository.delete(id);
    }

    public List<LeaseProduct> findAll() {
        return leaseProductRepository.findAll();
    }

    public LeaseProduct findById(Long id) {
        return leaseProductRepository.findOne(id);
    }
}

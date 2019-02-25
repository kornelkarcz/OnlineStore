package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.model.LeaseProduct;

public interface LeaseProductRepository extends JpaRepository<LeaseProduct, Long> {
}

package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.coderslab.model.ProductInOrder;

import java.math.BigDecimal;

public interface ProductInOrdersRepository extends JpaRepository<ProductInOrder, Long> {

    @Query(value = "select SUM(sum) from products_orders", nativeQuery = true)
    BigDecimal getSumOfPayments();
}

package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.coderslab.model.Order;
import pl.coderslab.model.QueryUserOrders;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

public interface OrderRepository extends JpaRepository<Order, Long> {


//    @Query(value = "SELECT orders.id, orders.orderDate, orders.user_id, SUM(products_orders.sum) FROM orders INNER JOIN products_orders ON orders.id = products_orders.order_id GROUP BY orders.id HAVING orders.user_id = ?1",nativeQuery = true)
    @Query("select new pl.coderslab.model.QueryUserOrders(o.id, o.orderDate, o.user.id, sum(po.sum)) from Order o join" +
            " o.productInOrders po group by o.id having o.user.id = ?1")
    public List<QueryUserOrders> findUserOrders(Long id);

}

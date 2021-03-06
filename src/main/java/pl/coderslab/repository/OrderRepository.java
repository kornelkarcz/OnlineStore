package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.coderslab.model.AdminAllOrdersQuery;
import pl.coderslab.model.Order;
import pl.coderslab.model.OrderDetails;
import pl.coderslab.model.QueryUserOrders;

import javax.persistence.criteria.CriteriaBuilder;
import java.math.BigDecimal;
import java.util.List;

public interface OrderRepository extends JpaRepository<Order, Long> {

    @Query("select new pl.coderslab.model.QueryUserOrders(o.id, o.orderDate, o.user.id, sum(po.sum)) from Order o join" +
            " o.productInOrders po group by o.id having o.user.id = ?1")
    List<QueryUserOrders> findUserOrders(Long id);

    @Query("select new pl.coderslab.model.OrderDetails(p.id, p.name, p.manufacturer, po.quantity, p.price, po.sum, po.id)" +
            " from Product p join p.productInOrders po where po.order.id = ?1")
    List<OrderDetails> findOrderDetails(Long id);

    @Query("select sum(po.sum) from ProductInOrder po group by po.order.id having po.order.id = ?1")
    BigDecimal getOrderSum(Long id);

    @Query(value = "select COUNT(*) from orders", nativeQuery = true)
    Integer getNumberOfOrders();

    @Query("select new pl.coderslab.model.AdminAllOrdersQuery(o.id, u.firstName, u.lastName, po.sum, o.orderDate)" +
            "from Order o join o.productInOrders po join o.user u)")
    List<AdminAllOrdersQuery> findAllOrdersForAdmin();

    @Query("select count (o.id), u.id from Order o join o.user u where u.id = ?1")
    Integer getNumberOfOrdersForUser(Long id);

}

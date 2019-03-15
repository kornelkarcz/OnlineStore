package pl.coderslab.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import pl.coderslab.model.AdminAllOrdersQuery;
import pl.coderslab.model.Order;
import pl.coderslab.model.OrderDetails;
import pl.coderslab.model.QueryUserOrders;
import pl.coderslab.repository.OrderRepository;

import java.math.BigDecimal;
import java.util.List;

@Component
public class OrderService {

    @Autowired
    private OrderRepository orderRepository;

    public void saveOrder(Order order) {
        orderRepository.save(order);
    }

    public Order findById(Long id) {
        return orderRepository.findOne(id);
    }

    public List<QueryUserOrders> findUserOrders(Long id) {
        return orderRepository.findUserOrders(id);
    }

    public List<OrderDetails> findOrderDetails(Long id) {
        return orderRepository.findOrderDetails(id);
    }

    public BigDecimal getOrderSum(Long id) {
        return orderRepository.getOrderSum(id);
    }

    public Integer getNumberOfOrders() {
        return orderRepository.getNumberOfOrders();
    }

    public List<AdminAllOrdersQuery> getAllOrders() {
        return orderRepository.findAllOrdersForAdmin();
    }
}

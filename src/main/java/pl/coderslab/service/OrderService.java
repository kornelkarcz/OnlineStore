package pl.coderslab.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import pl.coderslab.model.Order;
import pl.coderslab.model.QueryUserOrders;
import pl.coderslab.repository.OrderRepository;

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
}

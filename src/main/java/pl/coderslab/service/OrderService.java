package pl.coderslab.service;

import org.springframework.beans.factory.annotation.Autowired;
import pl.coderslab.repository.OrderRepository;

public class OrderService {

    @Autowired
    private OrderRepository orderRepository;
}

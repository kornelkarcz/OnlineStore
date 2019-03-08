package pl.coderslab.model;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalDateTime;

public class QueryUserOrders {

    private Long id;
    private LocalDateTime orderDate;
    private Long userId;
    private BigDecimal sum;

    public QueryUserOrders(Long id, LocalDateTime orderDate, Long userId, BigDecimal sum) {
        this.id = id;
        this.orderDate = orderDate;
        this.userId = userId;
        this.sum = sum;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public LocalDateTime getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(LocalDateTime orderDate) {
        this.orderDate = orderDate;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public BigDecimal getSum() {
        return sum;
    }

    public void setSum(BigDecimal sum) {
        this.sum = sum;
    }
}
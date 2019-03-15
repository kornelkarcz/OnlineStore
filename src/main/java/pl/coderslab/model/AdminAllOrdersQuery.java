package pl.coderslab.model;

import java.math.BigDecimal;
import java.time.LocalDateTime;

public class AdminAllOrdersQuery {

    private Long id;
    private String firstName;
    private String lastName;
    private BigDecimal sum;
    private LocalDateTime orderDate;

    public AdminAllOrdersQuery(Long id, String firstName, String lastName, BigDecimal sum, LocalDateTime orderDate) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.sum = sum;
        this.orderDate = orderDate;
    }

    public AdminAllOrdersQuery() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public BigDecimal getSum() {
        return sum;
    }

    public void setSum(BigDecimal sum) {
        this.sum = sum;
    }

    public LocalDateTime getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(LocalDateTime orderDate) {
        this.orderDate = orderDate;
    }
}

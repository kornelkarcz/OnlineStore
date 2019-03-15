package pl.coderslab.model;

import java.math.BigDecimal;
import java.time.LocalDateTime;

public class AdminAllPaymentsQuery {

    private Long id;
    private String firstName;
    private String lastName;
    private BigDecimal sum;
    private LocalDateTime paymentDate;

    public AdminAllPaymentsQuery(Long id, String firstName, String lastName, BigDecimal sum, LocalDateTime paymentDate) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.sum = sum;
        this.paymentDate = paymentDate;
    }

    public AdminAllPaymentsQuery() {
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

    public LocalDateTime getPaymentDate() {
        return paymentDate;
    }

    public void setPaymentDate(LocalDateTime paymentDate) {
        this.paymentDate = paymentDate;
    }
}

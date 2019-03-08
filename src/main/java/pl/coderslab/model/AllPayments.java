package pl.coderslab.model;

import java.math.BigDecimal;
import java.time.LocalDateTime;

public class AllPayments {

    private Long paymentId;
    private LocalDateTime paymentDate;
    private Long userId;
    private BigDecimal sum;

    public AllPayments(Long paymentId, LocalDateTime paymentDate, Long userId, BigDecimal sum) {
        this.paymentId = paymentId;
        this.paymentDate = paymentDate;
        this.userId = userId;
        this.sum = sum;
    }

    public AllPayments() {
    }

    public Long getPaymentId() {
        return paymentId;
    }

    public void setPaymentId(Long paymentId) {
        this.paymentId = paymentId;
    }

    public LocalDateTime getPaymentDate() {
        return paymentDate;
    }

    public void setPaymentDate(LocalDateTime paymentDate) {
        this.paymentDate = paymentDate;
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

package pl.coderslab.model;

import java.math.BigDecimal;
import java.time.LocalDateTime;

public class PaymentDetails {

    private Long paymentId;
    private Long productId;
    private String productName;
    private String productManufacturer;
    private Integer quantity;
    private BigDecimal price;
    private BigDecimal sum;
    private Long orderId;
    private LocalDateTime orderDate;

    public PaymentDetails(Long paymentId, Long productId, String productName, String productManufacturer, Integer quantity, BigDecimal price, BigDecimal sum, Long orderId, LocalDateTime orderDate) {
        this.paymentId = paymentId;
        this.productId = productId;
        this.productName = productName;
        this.productManufacturer = productManufacturer;
        this.quantity = quantity;
        this.price = price;
        this.sum = sum;
        this.orderId = orderId;
        this.orderDate = orderDate;
    }

    public PaymentDetails() {
    }

    public Long getProductId() {
        return productId;
    }

    public void setProductId(Long productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductManufacturer() {
        return productManufacturer;
    }

    public void setProductManufacturer(String productManufacturer) {
        this.productManufacturer = productManufacturer;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public BigDecimal getSum() {
        return sum;
    }

    public void setSum(BigDecimal sum) {
        this.sum = sum;
    }

    public Long getOrderId() {
        return orderId;
    }

    public void setOrderId(Long orderId) {
        this.orderId = orderId;
    }

    public LocalDateTime getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(LocalDateTime orderDate) {
        this.orderDate = orderDate;
    }

    public Long getPaymentId() {
        return paymentId;
    }

    public void setPaymentId(Long paymentId) {
        this.paymentId = paymentId;
    }
}

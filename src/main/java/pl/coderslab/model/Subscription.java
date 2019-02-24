package pl.coderslab.model;

import javax.persistence.*;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "subscriptions")
public class Subscription {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;


    @NotNull
    @Digits(integer = 5, fraction = 2)
    private BigDecimal sum;

    @NotNull
    private Integer quantity;

    private LocalDateTime startDate;

    private LocalDateTime endDate;

    @ManyToMany(cascade = {CascadeType.PERSIST, CascadeType.MERGE})
    @JoinTable(name = "productsforlease_subscriptions",
            joinColumns = {@JoinColumn(name = "subscription_id")},
            inverseJoinColumns = {@JoinColumn(name = "productsforlease_id")})
    private List<LeaseProduct> leaseProductList = new ArrayList<>();

    public Subscription() {
    }

    public Subscription(BigDecimal sum, Integer quantity, LocalDateTime startDate, LocalDateTime endDate) {
        this.sum = sum;
        this.quantity = quantity;
        this.startDate = startDate;
        this.endDate = endDate;
    }


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public BigDecimal getSum() {
        return sum;
    }

    public void setSum(BigDecimal sum) {
        this.sum = sum;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public LocalDateTime getStartDate() {
        return startDate;
    }

    public void setStartDate(LocalDateTime startDate) {
        this.startDate = startDate;
    }

    public LocalDateTime getEndDate() {
        return endDate;
    }

    public void setEndDate(LocalDateTime endDate) {
        this.endDate = endDate;
    }
}

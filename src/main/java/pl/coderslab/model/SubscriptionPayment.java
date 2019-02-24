package pl.coderslab.model;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "subscription_payments")
public class SubscriptionPayment {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private LocalDateTime date;

    @ManyToOne
    private User user;

    @OneToOne
    @JoinColumn(name = "subscription_id")
    private Subscription subscription;

    public SubscriptionPayment() {
    }

    public SubscriptionPayment(LocalDateTime date) {
        this.date = date;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public LocalDateTime getDate() {
        return date;
    }

    public void setDate(LocalDateTime date) {
        this.date = date;
    }
}

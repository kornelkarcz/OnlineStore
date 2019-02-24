package pl.coderslab.model;

import org.hibernate.validator.constraints.NotBlank;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.io.Serializable;

@Entity
@Table(name = "users_addresses")
@IdClass(UserAddreessPK.class)
public class UserAddress {

    @Id
    @ManyToOne
    @JoinColumn(name = "user_id", referencedColumnName = "id")
    private User user;

    @Id
    @ManyToOne
    @JoinColumn(name = "address_id", referencedColumnName = "id")
    private Address address;


    @NotBlank
    @Size(min = 3, max = 25)
    private String type;

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}

package pl.coderslab.model;

import org.hibernate.validator.constraints.NotBlank;

import javax.persistence.*;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Entity
@Table(name = "companies", uniqueConstraints = @UniqueConstraint(columnNames = {"nip", "regon"}))
public class Company {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank(message = "Company name cannot be empty.")
    @Size(min = 3, max = 100)
    private String name;

    @NotBlank(message = "NIP number cannot be empty.")
    @Pattern(regexp = "\\d{3}-\\d{3}-\\d{2}-\\d{2}")
    private String nip;

    @NotBlank(message = "REGON number cannot be empty.")
    @Pattern(regexp = "\\d{9}")
    private String regon;

    //Assumption: one company is registered under one address
    @OneToOne
    @JoinColumn(name = "address_id")
    private Address address;

    //Assumption: we consider only possibility of sole proprietorship
    @OneToOne
    @JoinColumn(name = "user_id")
    private User user;

    public Company() {
    }

    public Company(String name, String nip, String regon) {
        this.name = name;
        this.nip = nip;
        this.regon = regon;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNip() {
        return nip;
    }

    public void setNip(String nip) {
        this.nip = nip;
    }

    public String getRegon() {
        return regon;
    }

    public void setRegon(String regon) {
        this.regon = regon;
    }
}

package pl.coderslab.model;

import org.hibernate.validator.constraints.NotBlank;

import javax.persistence.*;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

@Entity
@Table(name = "addresses")
public class Address {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    @Size(min = 3, max = 50)
    private String streetName;

    @NotNull

    private int houseNumber;

    private int flatNumber;

    @NotBlank
    @Pattern(regexp = "\\d{2}-\\d{3}")
    private String postalCode;

    @NotBlank
    @Size(min = 3, max = 50)
    private String city;

    @NotBlank
    @Size(min = 3, max = 50)
    private String country;


    @OneToMany(mappedBy = "address")
    private List<UserAddress> employees;


    public Address() {
    }

    public Address(String streetName, int houseNumber, int flatNumber, String postalCode, String city, String country) {
        this.streetName = streetName;
        this.houseNumber = houseNumber;
        this.flatNumber = flatNumber;
        this.postalCode = postalCode;
        this.city = city;
        this.country = country;
    }


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getStreetName() {
        return streetName;
    }

    public void setStreetName(String streetName) {
        this.streetName = streetName;
    }

    public int getHouseNumber() {
        return houseNumber;
    }

    public void setHouseNumber(int houseNumber) {
        this.houseNumber = houseNumber;
    }

    public int getFlatNumber() {
        return flatNumber;
    }

    public void setFlatNumber(int flatNumber) {
        this.flatNumber = flatNumber;
    }

    public String getPostalCode() {
        return postalCode;
    }

    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }
}

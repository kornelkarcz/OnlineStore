package pl.coderslab.model;

import org.hibernate.validator.constraints.EAN;
import org.hibernate.validator.constraints.NotBlank;

import javax.persistence.*;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.math.BigDecimal;

@Entity
@Table(name = "lease_products")
public class LeaseProduct {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank(message = "Name cannot be empty.")
    @Size(min = 3, max = 50)
    private String name;

    @NotNull(message = "Price cannot be null.")
    @Digits(integer = 4, fraction = 2, message = "Use digits only.")
    private BigDecimal price;

    @NotBlank(message = "Manufacturer's name cannot be empty.")
    @Size(min = 3, max = 50)
    private String manufacturer;

    @NotBlank
    @Size(max = 1000)
    private String desciption;

    @NotBlank
    @EAN
    private String eanNumber;

    @ManyToOne
    @JoinColumn(name = "category_id")
    private Category category;



    public LeaseProduct() {
    }

    public LeaseProduct(String name, BigDecimal price, String manufacturer, String desciption, String eanNumber) {
        this.name = name;
        this.price = price;
        this.manufacturer = manufacturer;
        this.desciption = desciption;
        this.eanNumber = eanNumber;
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

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public String getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
    }

    public String getDesciption() {
        return desciption;
    }

    public void setDesciption(String desciption) {
        this.desciption = desciption;
    }

    public String getEanNumber() {
        return eanNumber;
    }

    public void setEanNumber(String eanNumber) {
        this.eanNumber = eanNumber;
    }
}

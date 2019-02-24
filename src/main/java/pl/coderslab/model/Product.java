package pl.coderslab.model;

import org.hibernate.validator.constraints.EAN;
import org.hibernate.validator.constraints.NotBlank;

import javax.persistence.*;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.math.BigDecimal;

@Entity
@Table(name = "products", uniqueConstraints = @UniqueConstraint(columnNames = "eanNumber"))
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank(message = "Name cannot be empty.")
    @Size(min = 3, max = 50)
    private String name;

    @NotBlank(message = "Manufacturer's name cannot be empty.")
    @Size(min = 3, max = 50)
    private String manufacturer;

    @NotNull(message = "Price cannot be null.")
    @Digits(integer = 4, fraction = 2, message = "Use digits only.")
    private BigDecimal price;

    @NotBlank
    private String description;

    @NotBlank
    @EAN
    private  String eanNumber;

    public Product() {
    }

    public Product(String name, String manufacturer, BigDecimal price, String description, String eanNumber) {
        this.name = name;
        this.manufacturer = manufacturer;
        this.price = price;
        this.description = description;
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

    public String getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getEanNumber() {
        return eanNumber;
    }

    public void setEanNumber(String eanNumber) {
        this.eanNumber = eanNumber;
    }
}

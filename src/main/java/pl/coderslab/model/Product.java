package pl.coderslab.model;

import org.hibernate.validator.constraints.NotBlank;

import javax.persistence.*;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@Entity
@Table(name = "products", uniqueConstraints = @UniqueConstraint(columnNames = "eanNumber"))
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank(message = "Name cannot be empty.")
    @Size(min = 3, max = 50, message = "Invalid name size")
    private String name;

    @NotBlank(message = "Manufacturer's name cannot be empty.")
    @Size(min = 3, max = 50, message = "Invalid size of manufacturer name")
    private String manufacturer;

    @NotNull(message = "Price cannot be null.")
    @Digits(integer = 4, fraction = 2, message = "Use digits only.")
    private BigDecimal price;

    @NotBlank(message = "Description cannot be empty")
    @Size(max = 1000, message = "Too long description")
    private String description;

    @NotBlank(message = "EAN number cannot be empty")
    @Pattern(regexp = "\\d{13}", message = "Invalid EAN number pattern")
    private String eanNumber;

    @OneToMany(mappedBy = "product", cascade = {CascadeType.PERSIST, CascadeType.MERGE})
    private List<ProductInOrder> productInOrders = new ArrayList<>();


    @ManyToOne
    @JoinColumn(name = "category_id")
    private Category category;

//    @ManyToMany(mappedBy = "productList", cascade = {CascadeType.MERGE, CascadeType.PERSIST})
//    private List<Order> orderList = new ArrayList<>();

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

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }



    public List<ProductInOrder> getProductInOrders() {
        return productInOrders;
    }

    public void setProductInOrders(List<ProductInOrder> productInOrders) {
        this.productInOrders = productInOrders;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Product product = (Product) o;
        return Objects.equals(id, product.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }

    @Override
    public String toString() {
        return "Product{" +
                "name='" + name + '\'' +
                ", manufacturer='" + manufacturer + '\'' +
                ", price=" + price +
                ", description='" + description + '\'' +
                ", eanNumber='" + eanNumber + '\'' +
                '}';
    }
}

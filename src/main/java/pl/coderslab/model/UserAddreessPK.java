package pl.coderslab.model;

import java.io.Serializable;
import java.util.Objects;

public class UserAddreessPK implements Serializable {

    private Long user;
    private Long address;

    public Long getUser() {
        return user;
    }

    public void setUser(Long user) {
        this.user = user;
    }

    public Long getAddress() {
        return address;
    }

    public void setAddress(Long address) {
        this.address = address;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        UserAddreessPK that = (UserAddreessPK) o;
        return Objects.equals(user, that.user) &&
                Objects.equals(address, that.address);
    }

    @Override
    public int hashCode() {
        return Objects.hash(user, address);
    }
}

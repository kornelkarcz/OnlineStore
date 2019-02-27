package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.coderslab.model.User;

public interface UserRepository extends JpaRepository<User, Long> {

    @Query("update User u set u.address.id = :addressId where u.id = ?1")
    public void assignAddressToUser(Long addressId, Long userId);
}

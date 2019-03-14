package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import pl.coderslab.model.User;

public interface UserRepository extends JpaRepository<User, Long> {

    @Query("update User u set u.address.id = ?1 where u.id = ?2")
    void assignAddressToUser(Long addressId, Long userId);

    User findUserByEmail(String email);

    @Query(value = "select COUNT(*) from users where superAdmin = \"false\"", nativeQuery = true)
    Integer numberOfUsers();

}

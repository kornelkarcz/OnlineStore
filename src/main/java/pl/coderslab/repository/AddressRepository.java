package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import pl.coderslab.model.Address;

public interface AddressRepository extends JpaRepository<Address, Long> {

    @Query("select a from User u join u.address a where u.id = ?1")
    Address getUserAddress(Long id);

}

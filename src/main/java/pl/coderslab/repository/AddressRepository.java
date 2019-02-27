package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.model.Address;

public interface AddressRepository extends JpaRepository<Address, Long> {


}

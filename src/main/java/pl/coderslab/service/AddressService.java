package pl.coderslab.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import pl.coderslab.model.Address;
import pl.coderslab.repository.AddressRepository;

@Component
@Transactional
public class AddressService {

    @Autowired
    private AddressRepository addressRepository;

    public void saveAddress(Address address) {
        addressRepository.save(address);
    }

    public Address findById(Long id) {
        return addressRepository.findOne(id);
    }

    public Address getUserAddress(Long id) {
        return addressRepository.getUserAddress(id);
    }

}


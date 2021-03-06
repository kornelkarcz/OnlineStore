package pl.coderslab.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import pl.coderslab.model.User;
import pl.coderslab.repository.UserRepository;

import java.util.List;

@Component
@Transactional
public class UserService {

    @Autowired
    private UserRepository userRepository;

    public void registerUser(User user) {
        userRepository.save(user);
    }

    public User findById(Long id) {
        return userRepository.findOne(id);
    }

    public List<User> findAll() {
        return userRepository.findAll();
    }

    public void assignAddressToUser(Long addressId, Long userId) {

    }

    public User findUserByEmail(String email) {
        return userRepository.findUserByEmail(email);
    }

    public Integer getNumberOfUsers() {
        return userRepository.numberOfUsers();
    }

    public User getUserDetails(Long id) {
        return userRepository.getUserDetails(id);
    }

}

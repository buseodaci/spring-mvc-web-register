package mcvdev.repository;

import mcvdev.model.User;

import java.util.List;

public interface UserRepository {
    List<User> getUsers();

    void saveUser(User user);
}

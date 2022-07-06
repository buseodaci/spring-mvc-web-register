package mcvdev.service;

import mcvdev.model.User;

import java.util.List;

public interface UserService {
    void save(User user);

    List<User> getAll();
}

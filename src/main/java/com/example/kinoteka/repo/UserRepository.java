package com.example.kinoteka.repo;

import com.example.kinoteka.models.User;
import org.springframework.data.repository.CrudRepository;

import java.util.Optional;

public interface UserRepository extends CrudRepository<User, Long> {
    Optional<User> findByLogin(String username);
}

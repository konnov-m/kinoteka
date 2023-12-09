package com.example.kinoteka.repo;

import com.example.kinoteka.models.User;
import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends CrudRepository<User, Long> {

}

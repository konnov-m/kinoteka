package com.example.kinoteka.repo;

import com.example.kinoteka.models.Permission;
import org.springframework.data.repository.CrudRepository;

import java.util.Optional;

public interface PermissionRepository extends CrudRepository<Permission, Long> {
    Optional<Permission> findByName(String name);
}

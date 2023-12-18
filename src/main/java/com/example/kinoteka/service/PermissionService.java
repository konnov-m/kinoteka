package com.example.kinoteka.service;

import com.example.kinoteka.models.Permission;
import com.example.kinoteka.repo.PermissionRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class PermissionService {

    private final PermissionRepository permissionRepository;


    public Permission getUserPermission() {
        return permissionRepository.findByName("ROLE_USER").get();
    }
}

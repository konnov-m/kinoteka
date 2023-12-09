package com.example.kinoteka.controllers;

import com.example.kinoteka.models.User;
import com.example.kinoteka.repo.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Optional;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserRepository userRepository;

    @GetMapping("/{id}")
    public String getUser(@PathVariable("id") Long id, Model model) {
        Optional<User> user =  userRepository.findById(id);

        user.ifPresent(value -> model.addAttribute("user", value));

        return "user/get";
    }

}

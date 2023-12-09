package com.example.kinoteka.controllers;

import com.example.kinoteka.models.Director;
import com.example.kinoteka.models.User;
import com.example.kinoteka.repo.DirectorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Optional;

@Controller
@RequestMapping("/director")
public class DirectorController {

    @Autowired
    DirectorRepository directorRepository;


    @GetMapping("/{id}")
    public String getDirector(@PathVariable("id") Long id, Model model) {
        Optional<Director> director =  directorRepository.findById(id);

        director.ifPresent(value -> model.addAttribute("director", value));

        return "director/get";
    }

}

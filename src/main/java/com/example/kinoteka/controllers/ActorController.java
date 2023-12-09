package com.example.kinoteka.controllers;


import com.example.kinoteka.models.Actor;
import com.example.kinoteka.models.Director;
import com.example.kinoteka.repo.ActorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Optional;

@Controller
@RequestMapping("/actor")
public class ActorController {

    @Autowired
    ActorRepository actorRepository;

    @GetMapping("/{id}")
    public String getActor(@PathVariable("id") Long id, Model model) {
        Optional<Actor> actor =  actorRepository.findById(id);

        actor.ifPresent(value -> model.addAttribute("actor", value));

        return "actor/get";
    }
}

package com.example.kinoteka.controllers;


import com.example.kinoteka.models.Director;
import com.example.kinoteka.models.Genre;
import com.example.kinoteka.repo.GenreRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Optional;

@Controller
@RequestMapping("/genre")
public class GenreController {

    @Autowired
    GenreRepository genreRepository;

    @GetMapping("/{id}")
    public String getGenre(@PathVariable("id") Long id, Model model) {
        Optional<Genre> genre =  genreRepository.findById(id);

        genre.ifPresent(value -> model.addAttribute("genre", value));

        return "genre/get";
    }
}

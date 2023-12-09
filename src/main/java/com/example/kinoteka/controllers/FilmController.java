package com.example.kinoteka.controllers;

import com.example.kinoteka.models.Director;
import com.example.kinoteka.models.Film;
import com.example.kinoteka.repo.FilmRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Optional;

@Controller
@RequestMapping("/film")
public class FilmController {

    @Autowired
    FilmRepository filmRepository;

    @GetMapping({"", "/"})
    public String getAll(Model model) {

        return "film/getAll";
    }


    @GetMapping("/{id}")
    public String getFilm(@PathVariable("id") Long id, Model model) {
        Optional<Film> film =  filmRepository.findById(id);

        film.ifPresent(value -> model.addAttribute("film", value));

        return "film/get";
    }
}

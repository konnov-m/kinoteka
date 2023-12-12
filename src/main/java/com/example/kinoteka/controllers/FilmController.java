package com.example.kinoteka.controllers;

import com.example.kinoteka.models.Film;
import com.example.kinoteka.repo.FilmRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Optional;

@Controller
@RequestMapping("/film")
public class FilmController {

    @Autowired
    FilmRepository filmRepository;

    @GetMapping({"", "/"})
    public String getAll(Model model) {
        Iterable<Film> films = filmRepository.findAll();
        model.addAttribute("films", films);

        return "film/getAll";
    }


    @GetMapping("/{id}")
    public String getFilm(@PathVariable("id") Long id, Model model) {
        Optional<Film> filmOptional =  filmRepository.findById(id);

        Film film = filmOptional.orElse(null);
//        List<CriticsFilmReview> comments = null;

//        if (film != null) {
//            comments = criticsFilmReviewRepository.findByFilm(film);
//        }

        model.addAttribute("film", film);
//        model.addAttribute("comments", comments);

        return "film/get";
    }
}

package com.example.kinoteka.controllers;

import com.example.kinoteka.models.Episode;
import com.example.kinoteka.models.Series;
import com.example.kinoteka.repo.EpisodeRepository;
import com.example.kinoteka.repo.SeriesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/series")
public class SeriesController {

    @Autowired
    SeriesRepository serialRepository;

    @Autowired
    EpisodeRepository episodeRepository;


    @GetMapping({"", "/"})
    public String getAll(Model model) {
        Iterable<Series> serials = serialRepository.findAll();

        model.addAttribute("serials", serials);


        return "series/getAll";
    }

    @GetMapping("/{id}")
    public String getSerial(@PathVariable("id") Long id, Model model) {
        Optional<Series> serialOptional =  serialRepository.findById(id);
        List<Episode> episodes = episodeRepository.findBySeriesId(id);

        Series serial = serialOptional.orElse(null);


        model.addAttribute("serial", serial);
        model.addAttribute("episodes", episodes);

        return "series/get";
    }


    @GetMapping("/{id}/episode/{epId}")
    public String getSerial(@PathVariable("id") Long id, @PathVariable("epId") String epId, Model model) {
        Episode episode = episodeRepository.findByIdAndSeriesId(epId, id);
        model.addAttribute("episode", episode);

        return "series/episode/get";
    }

}

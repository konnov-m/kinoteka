package com.example.kinoteka.controllers;

import com.example.kinoteka.models.Actor;
import com.example.kinoteka.models.StreamingService;
import com.example.kinoteka.repo.StreamingServiceRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Optional;


@Controller
@RequestMapping("/streaming-service")
public class StreamingServiceController {

    @Autowired
    StreamingServiceRepository repository;

    @GetMapping("/{id}")
    public String getService(@PathVariable("id") Long id, Model model) {
        Optional<StreamingService> service =  repository.findById(id);

        service.ifPresent(value -> model.addAttribute("service", value));

        return "service/get";
    }
}

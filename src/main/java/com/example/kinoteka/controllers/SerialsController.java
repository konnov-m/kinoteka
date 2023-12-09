package com.example.kinoteka.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("serial")
public class SerialsController {


    @GetMapping({"", "/"})
    public String getAll(Model model) {

        return "serial/getAll";
    }

}

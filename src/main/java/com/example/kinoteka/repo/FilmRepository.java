package com.example.kinoteka.repo;

import com.example.kinoteka.models.Film;
import org.springframework.data.repository.CrudRepository;

public interface FilmRepository extends CrudRepository<Film, Long> {
}
